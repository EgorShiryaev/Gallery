import '../../domain/entities/photo_list_entity.dart';
import '../../domain/entities/photo_type.dart';

abstract class PhotosDatasource {
  Future<PhotoListEntity> getPage({
    required PhotoType type,
    int page = 1,
  });
}
