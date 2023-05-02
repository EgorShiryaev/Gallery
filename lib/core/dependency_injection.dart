import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../data/datasources/photos_datasource.dart';
import '../data/datasources/photos_remote_datasource.dart';
import '../presentation/cubits/new_photos_cubit.dart';
import '../presentation/cubits/popular_photos_cubit.dart';
import 'app_settings.dart';

void dependencyInjection() {
  Get
    ..create(() => Dio(AppSettings.dioBaseOprions))
    ..create<PhotosDatasource>(
      () => PhotosRemoteDatasource(requestManager: Get.find()),
    )
    ..lazyPut(
      () => NewPhotosCubit(datasource: Get.find()),
      fenix: true,
    )
    ..lazyPut(
      () => PopularPhotosCubit(datasource: Get.find()),
      fenix: true,
    );
}
