import 'package:serverpod/serverpod.dart';
import '../generated/brands.dart';

class BrandsEndpoint extends Endpoint {
  // 모든 브랜드 조회
  Future<List<Brands>> getAllBrands(Session session) async {
    return await Brands.db.find(session);
  }
}
