import 'dart:async';
import 'dart:ui';

/// A utility class for debouncing a function call.
/// It ensures that the function is called only once after a certain delay.
class Debounce {
  /// Creates a [Debounce] object with the specified [duration].
  Debounce(this.duration);

  /// The duration to wait before calling the function.
  final Duration duration;

  Timer? _timer;

  /// Calls the provided [callback] function after the specified [duration].
  /// If this method is called again before the duration has passed,
  /// the previous call will be cancelled, and the timer will restart.
  void debounce(VoidCallback callback) {
    _timer?.cancel();
    _timer = Timer(duration, callback);
  }
}
