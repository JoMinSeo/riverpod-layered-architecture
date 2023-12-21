import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_layered_architecture/utils/interceptor/custom_log_interceptor.dart';

final dioProvider = Provider<Dio>((ref) {
  Dio dio = Dio();
  dio.interceptors.add(CustomLogInterceptor());

  return dio;
});