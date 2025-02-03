import 'package:serverpod/serverpod.dart';
import '../generated/products.dart';
import '../generated/products_images.dart';
import '../generated/products_likes.dart';
import '../generated/products_reports.dart';

class ProductsEndpoint extends Endpoint {
  // 모든 브랜드 조회
  Future<List<Products>> getAllProducts(Session session) async {
    return await Products.db
        .find(session, where: (p) => p.isDeleted.equals(false));
  }

  // 특정 브랜드 조회
  Future<List<Products>> getProductsByBrand(
      Session session, int brandId) async {
    return await Products.db
        .find(session, where: (p) => p.brandId.equals(brandId));
  }

  // 특정 지역 조회
  Future<List<Products>> getProductsByRegion(
      Session session, String region, int regionType) async {
    if (regionType == 1) {
      return await Products.db
          .find(session, where: (p) => p.region1.equals(region));
    } else if (regionType == 2) {
      return await Products.db
          .find(session, where: (p) => p.region2.equals(region));
    } else if (regionType == 3) {
      return await Products.db
          .find(session, where: (p) => p.region3.equals(region));
    } else {
      return [];
    }
  }

  // 특정 클럽 타입 조회
  Future<List<Products>> getProductsByClubType(
      Session session, String clubType) async {
    return await Products.db
        .find(session, where: (p) => p.clubType.equals(clubType));
  }

  // 특정 유저 조회
  Future<List<Products>> getProductsByUser(Session session, int userId) async {
    return await Products.db
        .find(session, where: (p) => p.userId.equals(userId));
  }

  // 특정 제품 조회
  Future<Products?> getProductById(Session session, int id) async {
    return await Products.db.findById(session, id);
  }

  // 좋아요 토글
  Future<bool> toggleLike(Session session, int productId, int userId) async {
    final existingLike = await ProductsLikes.db.findFirstRow(
      session,
      where: (p) => p.productId.equals(productId) & p.userId.equals(userId),
    );

    if (existingLike == null) {
      // 좋아요 생성
      await ProductsLikes.db.insertRow(
        session,
        ProductsLikes(
          productId: productId,
          userId: userId,
          isDeleted: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );
      return true;
    } else {
      // 좋아요 상태 토글
      existingLike.isDeleted = !existingLike.isDeleted;
      existingLike.updatedAt = DateTime.now();
      await ProductsLikes.db.updateRow(session, existingLike);
      return !existingLike.isDeleted;
    }
  }

  // 신고하기
  Future<void> reportProduct(
    Session session,
    int productId,
    int userId,
    String reason,
  ) async {
    await ProductsReports.db.insertRow(
      session,
      ProductsReports(
        productId: productId,
        userId: userId,
        reason: reason,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    );
  }

  // 제품 수정
  Future<Products> updateProduct(Session session, Products product) async {
    return await Products.db.updateRow(session, product);
  }

  // 제품 삭제 (soft delete)
  Future<Products?> deleteProduct(Session session, int id) async {
    var product = await Products.db.findById(session, id);
    if (product == null) return null;

    product.isDeleted = true;
    return await Products.db.updateRow(session, product);
  }
}
