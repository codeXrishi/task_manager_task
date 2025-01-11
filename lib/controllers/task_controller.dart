import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../models/task_model.dart';

class TaskController extends GetxController {
  // Declare the box here with the correct type
  late Box<TaskModel> taskBox;

  // Observable list to store tasks and make it reactive
  var taskList = <TaskModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    taskBox = Hive.box<TaskModel>('tasksBox');
    loadTasks();
  }

  // Fetch tasks from Hive box
  void loadTasks() {
    taskList.value = taskBox.values.toList();
  }

  // Add task to Hive
  void addTask(TaskModel task) {
    taskBox.add(task);
    loadTasks(); // Refresh the task list after adding a task
  }

  // Update task in Hive
  void updateTask(int index, TaskModel task) {
    taskBox.putAt(index, task);
    loadTasks(); // Refresh the task list after updating a task
  }

  // Delete task from Hive
  void deleteTask(int index) {
    taskBox.deleteAt(index);
    loadTasks(); // Refresh the task list after deleting a task
  }
}
