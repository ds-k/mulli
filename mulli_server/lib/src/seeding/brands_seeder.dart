import 'package:mulli_server/src/seeding/seeder.dart';
import '../generated/brands.dart';

class BrandsSeeder extends Seeder {
  BrandsSeeder(super.session);

  @override
  Future<void> run() async {
    final brands = [
      Brands(
        name: '캘러웨이',
        englishName: 'Callaway',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/callaway.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '테일러메이드',
        englishName: 'TaylorMade',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/taylormade.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '핑',
        englishName: 'PING',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/ping.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '타이틀리스트',
        englishName: 'Titleist',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/titleist.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: 'PXG',
        englishName: 'PXG',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/pxg.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '젝시오',
        englishName: 'XXIO',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/xxio.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '스릭슨',
        englishName: 'Srixon',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/srixon.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '클리브랜드',
        englishName: 'Cleveland',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/cleveland.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '브릿지스톤',
        englishName: 'Bridgestone',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/bridgestone.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '혼마',
        englishName: 'Honma',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/honma.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '마제스티',
        englishName: 'Majesty',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/majesty.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '코브라',
        englishName: 'Cobra',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/cobra.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '미즈노',
        englishName: 'Mizuno',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/mizuno.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '야마하',
        englishName: 'Yamaha',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/yamaha.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Brands(
        name: '오디세이',
        englishName: 'Odyssey',
        logoImageUrl:
            'https://mulli.s3.ap-northeast-2.amazonaws.com/brands/odyssey.png',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    ];

    await Brands.db.insert(session, brands);
  }
}
