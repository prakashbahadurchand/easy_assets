import 'package:floor/floor.dart';

import '../entity/user_entity.dart';

@dao
abstract class UserDao {
  @insert
  Future<void> insertUser(UserEntity user);

  @Query('DELETE FROM users')
  Future<void> deleteAll();
}
