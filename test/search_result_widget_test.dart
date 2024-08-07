import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpodtest/model/weather.dart';
import 'package:riverpodtest/widget/custom_loading_indicator_widget.dart';
import 'package:riverpodtest/widget/error_display_widget.dart';
import 'package:riverpodtest/widget/init_widget.dart';
import 'package:riverpodtest/widget/weather_search_result_widget.dart';

void main() {
  // Mock Providers for the test
  final searchResultProvider =
      Provider<AsyncValue<Weather>>((ref) => const AsyncValue.loading());
  final queryStringProvider = Provider<String>((ref) => '');

  // Creating a mock empty Weather object
  final mockEmptyWeather = Weather(
    success: '',
    result: Result(
      resourceId: '',
      fields: [],
    ),
    records: Records(
      datasetDescription: '',
      location: [],
    ),
  );

    // Creating a mock Weather object with data
  final mockWeatherWithData = Weather(
    success: 'true',
    result: Result(
      resourceId: 'mock_resource_id',
      fields: [
        Field(id: 'Wx', type: 'Weather'),
        Field(id: 'MaxT', type: 'Temperature'),
      ],
    ),
    records: Records(
      datasetDescription: 'Mock weather data',
      location: [
        Location(
          locationName: 'New York',
          weatherElement: [
            WeatherElement(
              elementName: 'Wx',
              time: [
                Time(
                  startTime: '2024-08-07 00:00:00',
                  endTime: '2024-08-07 12:00:00',
                  parameter: Parameter(
                    parameterName: 'Sunny',
                    parameterUnit: '',
                  ),
                ),
              ],
            ),
            WeatherElement(
              elementName: 'MaxT',
              time: [
                Time(
                  startTime: '2024-08-07 00:00:00',
                  endTime: '2024-08-07 12:00:00',
                  parameter: Parameter(
                    parameterName: '30',
                    parameterUnit: 'C',
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );


  
  group('WeatherSearchResultsWidget Tests', () {
    testWidgets('shows loading indicator when loading', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            searchResultProvider.overrideWithValue(const AsyncValue.loading()),
            queryStringProvider.overrideWithValue(''),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  WeatherSearchResultsWidget(
                    searchResultProvider: searchResultProvider,
                    queryStringProvider: queryStringProvider,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      // Act
      await tester.pump();

      // Assert
      expect(find.byType(CustomLoadingIndicatorWidget), findsOneWidget);
    });

      testWidgets('shows InitWidget when query string is empty', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            searchResultProvider.overrideWithValue(AsyncValue.data(mockEmptyWeather)),
            queryStringProvider.overrideWithValue(''),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  WeatherSearchResultsWidget(
                    searchResultProvider: searchResultProvider,
                    queryStringProvider: queryStringProvider,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      // Act
      await tester.pump();

      // Assert
      expect(find.byType(InitWidget), findsOneWidget);
    });

      testWidgets('shows ErrorDisplayWidget when there is an error', (WidgetTester tester) async {
      // Arrange
      const errorMessage = 'An error occurred';
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            searchResultProvider.overrideWithValue(AsyncValue.error(errorMessage, StackTrace.current)),
            queryStringProvider.overrideWithValue(''),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  WeatherSearchResultsWidget(
                    searchResultProvider: searchResultProvider,
                    queryStringProvider: queryStringProvider,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      // Act
      await tester.pump();

      // Assert
      expect(find.byType(ErrorDisplayWidget), findsOneWidget);
      expect(find.text(errorMessage), findsOneWidget);
    });

    testWidgets('displays weather data when available', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            searchResultProvider.overrideWithValue(AsyncValue.data(mockWeatherWithData)),
            queryStringProvider.overrideWithValue('New York'),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  WeatherSearchResultsWidget(
                    searchResultProvider: searchResultProvider,
                    queryStringProvider: queryStringProvider,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      // Act
      await tester.pump();

      // Assert
      expect(find.text('New York'), findsOneWidget);
      expect(find.text('2024-08-07 00:00 - 08-07 12:00 | Sunny '), findsOneWidget);
      expect(find.text('2024-08-07 00:00 - 08-07 12:00 | 30 C'), findsOneWidget);
    });

  });
}
