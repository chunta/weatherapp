import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/utility/debounce.dart';

/// A widget for inputting and searching weather data.
///
/// This widget contains a `TextField` for user input and a `Search` button
/// that triggers a search operation when pressed. The search query is
/// debounced to avoid excessive requests. The widget uses constructor
/// injection to receive a `StateProvider<String>` for managing the search
/// query.
class WeatherSearchInputWidget extends ConsumerWidget {
  // Private provider for the search query
  final StateProvider<String> _queryStringProvider;

  const WeatherSearchInputWidget({
    super.key,
    required StateProvider<String> queryStringProvider,
  }) : _queryStringProvider = queryStringProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the current value of the search query from the private provider
    final searchQuery = ref.watch(_queryStringProvider);

    // Initialize the TextEditingController with the current search query
    final TextEditingController controller =
        TextEditingController(text: searchQuery);

    // Debounce utility to limit the rate of updates when typing
    final debounce = Debounce(const Duration(milliseconds: 500));

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Expanded widget to take available space for the text field
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Search',
                border: const OutlineInputBorder(),
                suffixIcon: searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          // Clear the search query and text field
                          ref.read(_queryStringProvider.notifier).state = '';
                          controller.clear();
                        },
                      )
                    : null,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          SizedBox(
            height: 48, // Standard button height
            child: OutlinedButton(
              onPressed: () {
                final textValue = controller.text;
                if (textValue.isNotEmpty) {
                  debounce.debounce(() {
                    // Update the search query state with the new value
                    ref.read(_queryStringProvider.notifier).state = textValue;
                  });
                }
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue, width: 1.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(4.0), // Standard border radius
                ),
              ),
              child: const Text('Search'),
            ),
          ),
        ],
      ),
    );
  }
}
