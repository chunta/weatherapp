// Provider for managing the search query string state
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queryStringProvider = StateProvider<String>((ref) => '');
