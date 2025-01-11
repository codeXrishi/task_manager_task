import 'package:hive/hive.dart';

part 'task_model.g.dart'; // This part is necessary for generating the adapter

@HiveType(typeId: 0)
class TaskModel {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String priority;

  @HiveField(2)
  final DateTime? dueDate;

  @HiveField(3)
  bool isCompleted;

  TaskModel({
    required this.name,
    required this.priority,
    this.dueDate,
    this.isCompleted = false,
  });
}
