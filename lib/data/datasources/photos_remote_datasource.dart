import 'package:dio/dio.dart';

import '../../core/app_settings.dart';
import '../../core/empty_photo_list_entity.dart';
import '../../core/exceptions/server_not_available_exception.dart';
import '../../domain/entities/photo_list_entity.dart';
import '../../domain/entities/photo_type.dart';
import 'photos_datasource.dart';

class PhotosRemoteDatasource extends PhotosDatasource {
  final Dio _requestManager;

  PhotosRemoteDatasource({required Dio requestManager})
      : _requestManager = requestManager;

  @override
  Future<PhotoListEntity> getPage({
    required PhotoType type,
    int page = 1,
  }) async {
    try {
      final params = {
        'new': type == PhotoType.newest,
        'popular': type == PhotoType.popular,
        'page': page,
        'limit': AppSettings.limit,
      };
      final response = await _requestManager.get<Map<String, dynamic>>(
        '/photos',
        queryParameters: params,
      );

      if (response.data == null) {
        return emptyPhotoListEntity;
      }

      return PhotoListEntity.fromJson(response.data!);
    } on DioError catch (error) {
      if (error.response == null) {
        throw ServerNotAvailableException();
      }
      rethrow;
    }
  }
}
