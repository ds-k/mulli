import 'package:mulli_server/src/seeding/brands_seeder.dart';
import 'package:serverpod/serverpod.dart';
import 'package:mulli_server/src/web/routes/root.dart';
import 'package:mulli_server/src/generated/protocol.dart';
import 'package:mulli_server/src/generated/endpoints.dart';
import 'package:mulli_server/src/seeding/users_seeder.dart';
import 'package:serverpod_cloud_storage_s3/serverpod_cloud_storage_s3.dart'
    as s3;

class Server extends Serverpod {
  Server(List<String> args) : super(args, Protocol(), Endpoints());

  // Users seeding 메소드 추가
  Future<void> seedUsers() async {
    final session = await createSession();
    try {
      await UsersSeeder(session).run();
      print('Users seeding completed successfully.');
    } catch (e) {
      print('Error seeding users: $e');
    } finally {
      session.close();
    }
  }

  Future<void> seedBrands() async {
    final session = await createSession();
    await BrandsSeeder(session).run();
    print('Brands seeding completed successfully.');
  }
}

void run(List<String> args) async {
  final pod = Server(args);
  pod.addCloudStorage(s3.S3CloudStorage(
    serverpod: pod,
    storageId: 'public',
    public: true,
    region: 'ap-northeast-2',
    bucket: 'mulli',
    publicHost: 'mulli.s3.ap-northeast-2.amazonaws.com',
  ));

  // Setup routes...
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  await pod.start();
}
