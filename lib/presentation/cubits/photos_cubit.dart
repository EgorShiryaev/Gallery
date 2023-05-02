import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/exceptions/server_not_available_exception.dart';
import '../../data/datasources/photos_datasource.dart';
import '../../domain/entities/photo_type.dart';
import 'photos_state.dart';

abstract class PhotosCubit extends Cubit<PhotosState> {
  final PhotoType type;
  final PhotosDatasource datasource;
  PhotosCubit({
    required this.type,
    required this.datasource,
  }) : super(InitialPhotosState());

  int page = 1;

  Future<void> loadFirstPage() async {
    try {
      emit(FirstLoadingState());
      final photos = await datasource.getPage(type: type, page: page);
      emit(LoadedPhotosState(photos: photos));
    } catch (e) {
      if (e is ServerNotAvailableException) {
        emit(ServerNotAvailablePhotosState());
      } else {
        emit(ErrorPhotosState(message: e.toString()));
      }
    }
  }

  Future<void> reload() async {
    try {
      emit(FirstLoadingState());
      page = 1;
      final photos = await datasource.getPage(type: type, page: page);
      emit(LoadedPhotosState(photos: photos));
    } catch (e) {
      if (e is ServerNotAvailableException) {
        emit(ServerNotAvailablePhotosState());
      } else {
        emit(ErrorPhotosState(message: e.toString()));
      }
    }
  }

  Future<void> loadNextPage() async {
    try {
      if (state is LoadedPhotosState) {
        final photos = (state as LoadedPhotosState).photos;
        emit(NextPageLoadingPhotosState(photos: photos));
        await Future.delayed(const Duration(seconds: 2));
        page++;
        final newPhotos = await datasource.getPage(type: type, page: page);
        photos.data.addAll(newPhotos.data);
        emit(LoadedPhotosState(photos: photos));
      }
    } catch (e) {
      if (e is ServerNotAvailableException) {
        emit(ServerNotAvailablePhotosState());
      } else {
        emit(ErrorPhotosState(message: e.toString()));
      }
    }
  }
}
