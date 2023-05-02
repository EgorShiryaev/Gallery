// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoListEntity _$PhotoListEntityFromJson(Map<String, dynamic> json) =>
    PhotoListEntity(
      totalItems: json['totalItems'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => PhotoEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhotoListEntityToJson(PhotoListEntity instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'data': instance.data,
    };
