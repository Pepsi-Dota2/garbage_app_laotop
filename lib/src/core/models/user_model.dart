import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default("") String uid,
    @Default("") String username,
    @Default("") String user_tel,
    @Default("") String address,
    @Default("") String email,
    @Default("") String user_password,
    @Default("") String role,
    @Default("") createdAt,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
