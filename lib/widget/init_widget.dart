import 'package:flutter/material.dart';

/// A widget displayed when no search results are available and no location is entered.
///
/// This widget provides a prompt for users to enter a location to start searching
/// for weather details.
class InitWidget extends StatelessWidget {
  /// Creates an instance of [InitWidget].
  const InitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display an icon indicating a search action
          const Icon(
            Icons.search,
            color: Colors.blue,
            size: 48.0, // Size of the icon
          ),
          const SizedBox(height: 16.0), // Space between icon and text
          // Display a primary message prompting the user
          Text(
            'Please enter a location to search.',
            style: Theme.of(context)
                .textTheme
                .headlineSmall, // Style for the primary message
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0), // Space between messages
          // Display a secondary message providing further instruction
          Text(
            'Enter a location above to see weather details.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium, // Style for the secondary message
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
