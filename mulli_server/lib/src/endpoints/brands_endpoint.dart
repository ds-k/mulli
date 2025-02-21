import 'package:serverpod/serverpod.dart';
import '../generated/brands.dart';

class BrandsEndpoint extends Endpoint {
  // 모든 브랜드 조회
  Future<List<Brands>> getAllBrands(Session session) async {
    return await Brands.db.find(session);
  }

  Future<bool> brandExists(Session session, String path) async {
    print('path: $path');
    final brandExists = await session.storage.fileExists(
      storageId: 'public',
      path: 'brands/$path.png',
    );
    return brandExists;
  }
}
