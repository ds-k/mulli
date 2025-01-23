import 'package:serverpod/serverpod.dart';
import '../generated/users.dart';

class UsersEndpoint extends Endpoint {
  // 모든 유저 조회
  Future<List<Users>> getAllUsers(Session session) async {
    return await Users.db.find(session);
  }

  // ID로 유저 조회
  Future<Users?> getUserById(Session session, int id) async {
    return await Users.db.findById(session, id);
  }

  // 이메일로 유저 조회
  Future<Users?> getUserByEmail(Session session, String email) async {
    return await Users.db.findFirstRow(
      session,
      where: (t) => t.email.equals(email),
    );
  }
}
