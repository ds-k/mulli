import 'package:mulli_server/src/seeding/seeder.dart';
import '../generated/brands.dart';

class BrandsSeeder extends Seeder {
  BrandsSeeder(super.session);

  @override
  Future<void> run() async {
    final brands = [
      Brands(
        name: '캘러웨이',
        logoImageUrl: 'https://picsum.photos/200/200',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '테일러메이드',
        logoImageUrl: 'https://picsum.photos/200/200',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '핑',
        logoImageUrl: 'https://picsum.photos/200/200',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    ];

    await Brands.db.insert(session, brands);
  }
}
