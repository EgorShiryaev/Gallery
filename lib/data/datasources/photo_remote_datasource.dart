import 'package:dio/dio.dart';

import '../../core/exceptions/server_not_available_exception.dart';
import '../../domain/entities/photo_type.dart';
import '../../domain/entities/photo_entity.dart';
import 'photo_datasource.dart';

class PhotoRemoteDatasource extends PhotoDatasource {
  final Dio _requestManager;

  PhotoRemoteDatasource({required Dio requestManager})
      : _requestManager = requestManager;

  @override
  Future<List<PhotoEntity>> getPage({
    required int page,
    required PhotoType type,
    required int limit,
  }) async {
    try {
      final params = {
        'new': type == PhotoType.newest,
        'popular': type == PhotoType.popular,
        'page': page,
        'limit': limit,
      };
      final response = await _requestManager.get<Map<String, dynamic>>(
        '/photos',
        queryParameters: params,
      );
      final List<dynamic> data = response.data?['data'] ?? [];
      return data
          .map((value) => PhotoEntity.fromJson(value as Map<String, dynamic>))
          .toList();
    } on DioError catch (error) {
      if (error.response == null) {
        throw ServerNotAvailableException();
      }
      rethrow;
    }
  }
}
