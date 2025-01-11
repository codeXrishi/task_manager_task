import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/task_controller.dart';
import '../widgets/empty_task_widget.dart';
import '../widgets/task_card.dart';
import 'add_task_screen.dart';
import 'edit_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());

  TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50], // Light background color
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'Task Management',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        if (taskController.taskList.isEmpty) {
          return const EmptyTaskWidget();
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: taskController.taskList.length,
          itemBuilder: (context, index) {
            final task = taskController.taskList[index];
            return TaskCard(
              task: task,
              onDelete: () => taskController.deleteTask(index),
              onToggleComplete: () {
                task.isCompleted = !task.isCompleted;
                taskController.updateTask(index, task);
              },
              onEdit: () =>
                  Get.to(() => EditTaskScreen(taskIndex: index, task: task)),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () => Get.to(() => const AddTaskScreen()),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
