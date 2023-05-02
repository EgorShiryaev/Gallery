// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'photo_entity.dart';

part 'photo_list_entity.g.dart';

@JsonSerializable()
class PhotoListEntity {
  final int totalItems;

  final List<PhotoEntity> data;

  PhotoListEntity({
    required this.totalItems,
    required this.data,
  });

  factory PhotoListEntity.fromJson(Map<String, dynamic> json) =>
      _$PhotoListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoListEntityToJson(this);
}
