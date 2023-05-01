import 'dart:io';

import 'package:dio/dio.dart';

class AppSettings {
  static final dioBaseOprions = BaseOptions(
    baseUrl: 'https://gallery.prod1.webant.ru/api',
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );
}
