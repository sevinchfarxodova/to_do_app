import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app/providers/add_provider.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, Map<String, dynamic>>((
  ref,
) {
  return TaskNotifier();
});
