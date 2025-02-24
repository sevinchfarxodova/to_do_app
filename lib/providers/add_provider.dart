import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskNotifier extends StateNotifier<Map<String, dynamic>> {
  TaskNotifier() : super({});

  void addTask(String title, String description) {
    Map<String, dynamic> newState = Map.from(state);
    newState[title] = description;
    state = newState;
  }

  void removeTask(String title) {
    Map<String, dynamic> newState = Map.from(state);
    newState.remove(title);
    state = newState;
  }

  void clearTasks() {
    state = {};
  }
}