import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../../gen/src/core/data/remote/dto/user_dto.freezed.dart';
part '../../../../../gen/src/core/data/remote/dto/user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required bool success,
    required String message,
    required UserInfo data,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String name,
    required String email,
    required String phone,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
