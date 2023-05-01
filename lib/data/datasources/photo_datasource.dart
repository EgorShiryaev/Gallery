import '../../domain/entities/photo_entity.dart';
import '../../domain/entities/photo_type.dart';

abstract class PhotoDatasource {
  Future<List<PhotoEntity>> getPage({
    required int page,
    required PhotoType type,
    required int limit,
  });
}
