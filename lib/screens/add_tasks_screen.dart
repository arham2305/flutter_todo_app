import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddTasksScreen extends StatelessWidget {

  final Function addTaskCallback ;

  AddTasksScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    TextEditingController textEditingController = new TextEditingController();

    return Container(
      color: Color(0xff757575),
      height: 500.0,
      child: Container(
        padding: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.only
            (
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: textEditingController,
              textAlign: TextAlign.center,
              autofocus: true,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
            ),
            FlatButton(
              child: Text('Add' , style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}