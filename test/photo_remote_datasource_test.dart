import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/core/dependency_injection.dart';
import 'package:gallery/data/datasources/photo_datasource.dart';
import 'package:gallery/domain/entities/photo_type.dart';
import 'package:get/instance_manager.dart';

void main() {
  dependencyInjection();
  group('test photoRemoteDatasource', () {
    final PhotoDatasource photoRemoteDatasource = Get.find();
    test('test limit', () async {
      const limit = 10;
      final photos = await photoRemoteDatasource.getPage(
        page: 1,
        limit: limit,
        type: PhotoType.newest,
      );
      expect(photos.length, limit);
    });
    test('test isNew flag', () async {
      const limit = 10;
      final photos = await photoRemoteDatasource.getPage(
        page: 1,
        limit: limit,
        type: PhotoType.newest,
      );
      final newest = photos.where((value) => value.isNew);
      expect(photos.length, newest.length);
    });
    test('test isPopular flag', () async {
      const limit = 10;
      final photos = await photoRemoteDatasource.getPage(
        page: 1,
        limit: limit,
        type: PhotoType.popular,
      );
      final newest = photos.where((value) => value.isPopular);
      expect(photos.length, newest.length);
    });
  });
}
