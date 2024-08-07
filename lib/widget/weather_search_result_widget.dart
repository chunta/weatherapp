import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/widget/init_widget.dart';
import 'package:riverpodtest/model/weather.dart';
import 'package:riverpodtest/widget/custom_loading_indicator_widget.dart';
import 'error_display_widget.dart';

/// Represents an icon and description prefix for different weather elements.
///
/// Used for displaying weather information with corresponding icons and
/// descriptions.
class WeatherIconDescription {
  final IconData icon;
  final Color color;
  final String descriptionPrefix;

  /// Creates an instance of [WeatherIconDescription].
  WeatherIconDescription({
    required this.icon,
    required this.color,
    required this.descriptionPrefix,
  });
}

/// Provides a mapping from weather element names to their icons and descriptions.
final Map<String, WeatherIconDescription> weatherResolverTable = {
  'Wx': WeatherIconDescription(
    icon: Icons.wb_sunny,
    color: Colors.amber,
    descriptionPrefix: '天氣現象',
  ),
  'MaxT': WeatherIconDescription(
    icon: Icons.thermostat,
    color: Colors.red,
    descriptionPrefix: '最高溫: ',
  ),
  'MinT': WeatherIconDescription(
    icon: Icons.ac_unit,
    color: Colors.blue,
    descriptionPrefix: '最低溫: ',
  ),
  'CI': WeatherIconDescription(
    icon: Icons.sentiment_satisfied,
    color: Colors.green,
    descriptionPrefix: '舒適度: ',
  ),
  'PoP': WeatherIconDescription(
    icon: Icons.umbrella,
    color: Colors.blueAccent,
    descriptionPrefix: '降雨率: ',
  ),
};

/// A widget that displays weather search results.
///
/// This widget fetches and displays weather data based on the search query.
/// It shows results in a list of cards with weather information for each location.
class WeatherSearchResultsWidget extends ConsumerWidget {
  /// Provider for fetching search results.
  final ProviderBase<AsyncValue<Weather>> _searchResultProvider;

  /// Provider for managing the search query state.
  final ProviderBase<String> _queryStringProvider;

  /// Creates a [WeatherSearchResultsWidget] with the given providers.
  ///
  /// [searchResultProvider] is used to fetch the weather search results.
  /// [queryStringProvider] is used to manage the state of the search query.
  const WeatherSearchResultsWidget({
    super.key,
    required ProviderBase<AsyncValue<Weather>> searchResultProvider,
    required ProviderBase<String> queryStringProvider,
  })  : _searchResultProvider = searchResultProvider,
        _queryStringProvider = queryStringProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the current value of the search results and query string
    final searchResultAsyncValue = ref.watch(_searchResultProvider);
    final query = ref.watch(_queryStringProvider);

    return searchResultAsyncValue.when(
      data: (weatherModel) {
        // If query is empty, show initial widget
        if (query.isEmpty) {
          return const InitWidget();
        }

        // If no locations are found, show an error message
        if (weatherModel.records.location.isEmpty) {
          return const ErrorDisplayWidget(
            message:
                'No results found. Please enter a location to see weather details.',
            type: ErrorType.noResults,
          );
        }

        final locations = weatherModel.records.location;

        return Expanded(
          child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index];
              final weatherElements = location.weatherElement;

              return Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display location name
                      Text(
                        location.locationName,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      // Display weather elements for the location
                      ...weatherElements.map((element) {
                        final times = element.time;
                        final resolver =
                            weatherResolverTable[element.elementName];

                        // Skip if element is not recognized
                        if (resolver == null) {
                          return const SizedBox.shrink();
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(),
                            Row(
                              children: [
                                Icon(resolver.icon, color: resolver.color),
                                const SizedBox(width: 8.0),
                                Text(
                                  resolver.descriptionPrefix,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            ...times.map((time) {
                              final startTime = formatDateTime(time.startTime,
                                  removeSeconds: true);
                              final endTime = formatDateTime(time.endTime,
                                  removeYear: true, removeSeconds: true);

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        '$startTime - $endTime | ${time.parameter.parameterName} ${time.parameter.parameterUnit ?? ''}',
                                        style: const TextStyle(fontSize: 14.0),
                                        minFontSize: 4,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => const CustomLoadingIndicatorWidget(),
      error: (error, stack) {
        // Display error message with retry option
        return ErrorDisplayWidget(
          message: error.toString(),
          type: ErrorType.error,
          onRetry: () {
            // Refresh search results on retry
            // ignore: unused_result
            ref.refresh(_searchResultProvider);
          },
        );
      },
    );
  }

  /// Formats a date-time string according to specified options.
  ///
  /// [removeYear] indicates whether to exclude the year in the formatted string.
  /// [removeSeconds] indicates whether to exclude seconds in the formatted string.
  String formatDateTime(String dateTimeStr,
      {bool removeYear = false, bool removeSeconds = false}) {
    DateTime dateTime = DateTime.parse(dateTimeStr);

    String formattedDate = '';

    if (removeYear) {
      formattedDate =
          '${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } else {
      formattedDate =
          '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    }

    if (!removeSeconds) {
      formattedDate += ':${dateTime.second.toString().padLeft(2, '0')}';
    }

    return formattedDate;
  }
}
