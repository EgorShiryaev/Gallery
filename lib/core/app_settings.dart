import 'dart:io';

import 'package:dio/dio.dart';

class AppSettings {
  static const baseUrl = 'https://gallery.prod1.webant.ru';
  static final dioBaseOprions = BaseOptions(
    baseUrl: '$baseUrl/api',
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );
}
