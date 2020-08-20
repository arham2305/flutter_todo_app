import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoeyflutter/models/task.dart';
class TasksList extends StatefulWidget {
  final List<Task> tasks ;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  _TasksListState({this.name});
  String name ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index ){
      return TasksTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
      );
    },
    itemCount: widget.tasks.length,
    );
  }
}