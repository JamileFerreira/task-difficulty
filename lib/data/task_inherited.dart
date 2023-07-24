import 'package:flutter/material.dart';
import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Andar de Bike', 'assets/images/bike.jpg', 2),
    Task('Ler 50 páginas', 'assets/images/ler.jpg', 1),
    Task('Meditar', 'assets/images/meditar.jpg', 4),
    Task('Jogar', 'assets/images/jogar.webp', 1),
    Task('Correr', 'assets/images/correr.webp', 5),
    Task('Dançar', 'assets/images/dancar.jpg', 3),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
