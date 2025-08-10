import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    @Default("") String user_name,
    @Default("") String user_tel,
    @Default("") String user_address,
    @Default("") String user_email,
    @Default("") String user_password,
    @Default("") String role,
    DateTime? created_at,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
