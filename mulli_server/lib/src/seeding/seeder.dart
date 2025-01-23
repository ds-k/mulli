import 'package:serverpod/serverpod.dart';

abstract class Seeder {
  final Session session;

  Seeder(this.session);

  Future<void> run();
}
