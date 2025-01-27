import 'package:mulli_server/server.dart';

/// This is the starting point for your Serverpod server. Typically, there is
/// no need to modify this file.
void main(List<String> args) async {
  if (args.contains('--seed-data')) {
    final server = Server(args);
    await server.seedUsers();
    // await server.seedBrands();
    return;
  }

  run(args);
}
