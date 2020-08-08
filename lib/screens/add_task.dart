import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';


class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      color: Color(0xff7C7C7C),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
          topRight: Radius.circular(30))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,

               ),),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (newValue){
              newTask = newValue;
            },
          ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: FlatButton(
                  color: Colors.blueAccent,
                  onPressed: (){
                    Provider.of<TaskData>(context, listen: false).addTasks(newTask);
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
