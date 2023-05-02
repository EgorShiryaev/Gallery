import 'package:flutter_test/flutter_test.dart';
import 'package:gallery/core/dependency_injection.dart';
import 'package:gallery/data/datasources/photos_datasource.dart';
import 'package:gallery/domain/entities/photo_type.dart';
import 'package:get/instance_manager.dart';

void main() {
  dependencyInjection();
  group('test photoRemoteDatasource', () {
    final PhotosDatasource photoRemoteDatasource = Get.find();
    test('test limit', () async {
      const limit = 10;
      final photos = await photoRemoteDatasource.getPage(
        type: PhotoType.newest,
      );
      expect(photos.data.length, limit);
    });
    test('test isNew flag', () async {
      final photos = await photoRemoteDatasource.getPage(
        type: PhotoType.newest,
      );
      final newest = photos.data.where((value) => value.isNew);
      expect(photos.data.length, newest.length);
    });
    test('test isPopular flag', () async {
      final photos = await photoRemoteDatasource.getPage(
        type: PhotoType.popular,
      );
      final newest = photos.data.where((value) => value.isPopular);
      expect(photos.data.length, newest.length);
    });
  });
}
