import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../gen/src/core/data/model/user_model.freezed.dart';
part '../../../../gen/src/core/data/model/user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required bool success,
    required String message,
    required UserData data,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required String name,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
