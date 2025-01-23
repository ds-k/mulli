import 'package:mulli_server/src/seeding/seeder.dart';

import '../generated/users.dart';

class UsersSeeder extends Seeder {
  UsersSeeder(super.session);

  @override
  Future<void> run() async {
    final users = [
      Users(
        socialId: 'google_12345',
        socialType: 'GOOGLE',
        name: '테스트 유저1',
        email: 'test1@example.com',
        userProfileUrl: 'https://picsum.photos/300/300',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      Users(
        socialId: 'apple_67890',
        socialType: 'APPLE',
        name: '테스트 유저2',
        email: 'test2@example.com',
        userProfileUrl: 'https://picsum.photos/300/300',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    ];

    await Users.db.insert(session, users);
  }
}
