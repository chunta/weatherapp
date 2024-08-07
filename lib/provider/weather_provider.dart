import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache_fix/dio_http_cache.dart';
import 'package:riverpodtest/provider/dio_provider.dart';
import 'package:riverpodtest/provider/query_string_provider.dart';
import '../model/weather.dart';

// Define the authorization token as a constant
const String _authorizationToken = 'CWA-F94B8478-BB71-4A9D-8386-D9F2C1D183B6';

// Define a duration for caching API responses
const Duration _cacheDuration = Duration(hours: 1);

// Provider for fetching weather data based on the search query
final searchWeatherResultProvider = FutureProvider<Weather>((ref) async {
  final query = ref.watch(queryStringProvider);
  final dio = ref.watch(dioProvider);

  // If the query is empty, return an empty Weather object
  if (query.isEmpty) {
    return _emptyWeatherResponse();
  }

  final url = _buildWeatherApiUrl(query);

  try {
    Options cacheOptions = buildCacheOptions(_cacheDuration);
    final response = await dio.getUri(url, options: cacheOptions);
    return _handleResponse(response);
  } on DioException catch (dioError) {
    if (dioError.response != null) {
      throw Exception(
          'Server error: ${dioError.response?.statusCode} - ${dioError.response?.statusMessage}');
    } else {
      throw Exception('Network error: ${dioError.message}');
    }
  } catch (e) {
    throw Exception('Unexpected error: $e');
  }
});

// Builds an empty Weather response object for empty queries
Weather _emptyWeatherResponse() {
  return Weather(
    success: 'false',
    result: Result(resourceId: '', fields: []),
    records: Records(datasetDescription: '', location: []),
  );
}

// Constructs the weather API URL based on the encoded query
Uri _buildWeatherApiUrl(String query) {
  final encodedQuery = Uri.encodeComponent(query);
  return Uri.parse(
    'https://opendata.cwa.gov.tw/api/v1/rest/datastore/F-C0032-001'
    '?locationName=$encodedQuery'
    '&Authorization=$_authorizationToken',
  );
}

// Handles the Dio response and returns a Weather object
Weather _handleResponse(Response response) {
  if (response.statusCode == 200) {
    final data = response.data;
    return Weather.fromJson(data);
  }
  throw Exception('Server responded with status code: ${response.statusCode}');
}
