import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../data/datasources/photo_datasource.dart';
import '../data/datasources/photo_remote_datasource.dart';
import 'app_settings.dart';

void dependencyInjection() {
  Get
    ..create(() => Dio(AppSettings.dioBaseOprions))
    ..create<PhotoDatasource>(
      () => PhotoRemoteDatasource(requestManager: Get.find()),
    );
}
