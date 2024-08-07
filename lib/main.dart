import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/provider/query_string_provider.dart';
import 'package:riverpodtest/provider/weather_provider.dart';
import 'package:riverpodtest/widget/weather_search_result_widget.dart';
import 'package:riverpodtest/widget/weather_search_input_widget.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('全台36小時天氣預報查詢'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              WeatherSearchInputWidget(
                  queryStringProvider: queryStringProvider),
              WeatherSearchResultsWidget(
                searchResultProvider: searchWeatherResultProvider,
                queryStringProvider: queryStringProvider,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const ProviderScope(
      child: WeatherApp(),
    ),
  );
}
