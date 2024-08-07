// Provider for configuring and providing Dio instance
import 'package:dio/dio.dart';
import 'package:dio_http_cache_fix/dio_http_cache.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio()
    ..httpClientAdapter = NativeAdapter(
      createCupertinoConfiguration: () =>
          URLSessionConfiguration.ephemeralSessionConfiguration(),
    );

  // Configure default cache settings
  final cacheConfig = CacheConfig();
  final cacheManager = DioCacheManager(cacheConfig);

  // Add the cache interceptor to Dio
  dio.interceptors.add(cacheManager.interceptor);

  return dio;
});
