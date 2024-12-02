import 'package:floor/floor.dart';

@Entity(tableName: 'users')
class UserEntity {
  @PrimaryKey(autoGenerate: false)
  final int id;
  final String name;
  final String email;
  final String phone;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });
}
