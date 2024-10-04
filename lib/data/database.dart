import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ['Example Task 1', false],
      ['Example Task 2', false],
    ];
    updateDatabase(); // Save the initial data to the Hive box
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST") ?? [];
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
