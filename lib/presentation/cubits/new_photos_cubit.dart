import '../../domain/entities/photo_type.dart';
import 'photos_cubit.dart';

class NewPhotosCubit extends PhotosCubit {
  NewPhotosCubit({required super.datasource}) : super(type: PhotoType.newest);
}
