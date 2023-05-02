import '../../domain/entities/photo_type.dart';
import 'photos_cubit.dart';

class PopularPhotosCubit extends PhotosCubit {
  PopularPhotosCubit({required super.datasource})
      : super(type: PhotoType.popular);
}
