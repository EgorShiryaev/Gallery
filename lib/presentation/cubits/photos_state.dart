import '../../domain/entities/photo_list_entity.dart';

abstract class PhotosState {}

class InitialPhotosState extends PhotosState {}

class FirstLoadingState extends PhotosState {}

class NextPageLoadingPhotosState extends PhotosState {
  final PhotoListEntity photos;

  NextPageLoadingPhotosState({required this.photos});
}

class LoadedPhotosState extends PhotosState {
  final PhotoListEntity photos;

  LoadedPhotosState({required this.photos});
}

class ErrorPhotosState extends PhotosState {
  final String message;

  ErrorPhotosState({required this.message});
}

class ServerNotAvailablePhotosState extends PhotosState {}
