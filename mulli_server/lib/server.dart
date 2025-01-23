import 'package:serverpod/serverpod.dart';
import 'package:mulli_server/src/web/routes/root.dart';
import 'package:mulli_server/src/generated/protocol.dart';
import 'package:mulli_server/src/generated/endpoints.dart';
import 'package:mulli_server/src/seeding/users_seeder.dart';

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
}

void run(List<String> args) async {
  final pod = Server(args);

  // Setup routes...
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  await pod.start();
}
