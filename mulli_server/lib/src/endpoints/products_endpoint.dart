import 'package:serverpod/serverpod.dart';
import '../generated/products.dart';

class ProductsEndpoint extends Endpoint {
  // 모든 브랜드 조회
  Future<List<Products>> getAllProducts(Session session) async {
    return await Products.db.find(session);
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

  // 제품 생성
  Future<Products> createProduct(Session session, Products product) async {
    return await Products.db.insertRow(session, product);
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

  // 필터 조회
  // user ID 도 필터로 받으면 좋을 듯(마이페이지 용)
  // Future<List<Products>> getProductsByFilter(
  //   Session session, {
  //   String? clubType,
  //   String? shaftType,
  //   String? flexType,
  //   String? region1,
  //   String? region2,
  //   String? region3,
  //   int? brandId,
  //   double? minPrice,
  //   double? maxPrice,
  //   String? salesStatus,
  //   List<String>? clubTypes, // 여러 클럽 타입 동시 검색
  //   String? searchKeyword, // 검색어 추가
  //   String sortBy = 'created_at',
  //   bool ascending = false,
  // }) async {
  //   return await Products.db.find(
  //     session,
  //     where: (p) {
  //       var conditions = <Expression<bool>>[];

  //       // 클럽 타입 필터 (단일/복수 선택 지원)
  //       if (clubType != null) {
  //         conditions.add(p.clubType.equals(clubType) as Expression<bool>);
  //       } else if (clubTypes != null && clubTypes.isNotEmpty) {
  //         conditions.add(p.clubType.inList(clubTypes) as Expression<bool>);
  //       }

  //       // 샤프트 타입 필터
  //       if (shaftType != null) {
  //         conditions.add(p.shaftType.equals(shaftType) as Expression<bool>);
  //       }

  //       // 플렉스 타입 필터
  //       if (flexType != null) {
  //         conditions.add(p.flexType.equals(flexType) as Expression<bool>);
  //       }

  //       // 지역 필터 (계층 구조)
  //       if (region1 != null) {
  //         conditions.add(p.region1.equals(region1) as Expression<bool>);
  //         if (region2 != null) {
  //           conditions.add(p.region2.equals(region2) as Expression<bool>);
  //           if (region3 != null) {
  //             conditions.add(p.region3.equals(region3) as Expression<bool>);
  //           }
  //         }
  //       }

  //       // 브랜드 필터
  //       if (brandId != null) {
  //         conditions.add(p.brandId.equals(brandId) as Expression<bool>);
  //       }

  //       // 가격 범위 필터
  //       if (minPrice != null && maxPrice != null) {
  //         conditions
  //             .add(p.price.between(minPrice, maxPrice) as Expression<bool>);
  //       } else {
  //         if (minPrice != null) {
  //           conditions
  //               .add(p.price.greaterThanOrEquals(minPrice) as Expression<bool>);
  //         }
  //         if (maxPrice != null) {
  //           conditions
  //               .add(p.price.lessThanOrEquals(maxPrice) as Expression<bool>);
  //         }
  //       }

  //       // 판매 상태 필터
  //       if (salesStatus != null) {
  //         conditions.add(p.status.equals(salesStatus) as Expression<bool>);
  //       }

  //       // 검색어 필터 (제목, 설명에서 검색)
  //       if (searchKeyword != null && searchKeyword.isNotEmpty) {
  //         conditions.add((p.title.ilike('%$searchKeyword%') |
  //             p.description.ilike('%$searchKeyword%')) as Expression<bool>);
  //       }

  //       // 삭제된 상품 제외 & 기본 조건
  //       // 신고 글 안보이게(isReported = true)
  //       conditions.add(p.isDeleted.equals(false) as Expression<bool>);
  //       conditions.add(p.status.isNotNull() as Expression<bool>);

  //       // 모든 조건을 AND로 결합
  //       return conditions.fold<Expression<bool>>(
  //         const Constant(true),
  //         (prev, curr) => prev & curr,
  //       );
  //     },
  //     orderBy: (p) {
  //       switch (sortBy) {
  //         case 'price':
  //           return p.price;
  //         case 'created_at':
  //         default:
  //           return p.createdAt;
  //       }
  //     },
  //     orderDescending: !ascending,
  //   );
  // }
}
