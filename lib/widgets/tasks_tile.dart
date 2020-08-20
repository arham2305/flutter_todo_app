import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked ;
  final Function checkboxCallback ;

  final String taskTitle ;
  TasksTile({this.isChecked ,  this.taskTitle , this.checkboxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle ,
      style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}

