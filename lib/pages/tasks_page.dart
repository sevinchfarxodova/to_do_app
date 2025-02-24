import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/riverpod.dart';

class TasksPage extends ConsumerWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "My tasks",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final taskTitle = tasks.keys.elementAt(index);
          final taskDescription = tasks[taskTitle];
          return ListTile(
            title: Text(taskTitle),
            subtitle: Text(taskDescription),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                ref.read(taskProvider.notifier).removeTask(taskTitle);
              },
            ),
          );
        },
      ),
    );
  }
}
