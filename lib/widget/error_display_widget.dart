import 'package:flutter/material.dart';

/// Enum to differentiate between different types of error displays.
enum ErrorType { error, noResults }

/// A widget to display error or "no results" messages.
/// It also supports an optional retry button for error scenarios.
class ErrorDisplayWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final ErrorType type;

  const ErrorDisplayWidget({
    super.key,
    required this.message,
    this.onRetry,
    this.type = ErrorType.error,
  });

  /// Truncates the [message] if it exceeds the [maxLength] and appends '...'.
  String _truncateMessage(String message) {
    const int maxLength = 100;
    if (message.length > maxLength) {
      return '${message.substring(0, maxLength)}...';
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    // Define icon and color based on the error type.
    final icon = type == ErrorType.error ? Icons.error : Icons.search_off;
    final color = type == ErrorType.error ? Colors.red : Colors.grey;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 48.0),
          const SizedBox(height: 16.0),
          Text(
            _truncateMessage(message),
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: color,
                ),
            textAlign: TextAlign.center,
          ),
          if (type == ErrorType.error && onRetry != null) ...[
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }
}
