import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_model.freezed.dart';
part 'author_model.g.dart';

@freezed
class AuthorModel with _$AuthorModel {
  const AuthorModel._();
  factory AuthorModel(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'picture') String picture,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName) = _AuthorModel;

  String get name {
    return '$firstName $lastName';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}
