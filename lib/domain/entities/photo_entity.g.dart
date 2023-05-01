// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoEntity _$PhotoEntityFromJson(Map<String, dynamic> json) => PhotoEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      description: json['description'] as String,
      isNew: json['new'] as bool,
      isPopular: json['popular'] as bool,
      image: ImageEntity.fromJson(json['image'] as Map<String, dynamic>),
      user: json['user'] as String,
    );

Map<String, dynamic> _$PhotoEntityToJson(PhotoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'description': instance.description,
      'new': instance.isNew,
      'popular': instance.isPopular,
      'image': instance.image,
      'user': instance.user,
    };
