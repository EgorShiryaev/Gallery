// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'image_entity.dart';
part 'photo_entity.g.dart';

@JsonSerializable()
class PhotoEntity {
  final int id;

  final String name;

  final DateTime dateCreate;

  final String description;

  @JsonKey(name: 'new')
  final bool isNew;

  @JsonKey(name: 'popular')
  final bool isPopular;

  final ImageEntity image;

  final String? user;

  PhotoEntity({
    required this.id,
    required this.name,
    required this.dateCreate,
    required this.description,
    required this.isNew,
    required this.isPopular,
    required this.image,
     this.user,
  });

  factory PhotoEntity.fromJson(Map<String, dynamic> json) =>
      _$PhotoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoEntityToJson(this);
}
