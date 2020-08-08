import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/models/tasks.dart';
import 'package:todo_app/widgets/list_tile.dart';


class TaskLists extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return ListTileWidget(
              taskTitle:task.task,
              isChecked: task.isDone,
              checkedCallback: (isCheckedValue){
                taskData.updateTask(task);
              },
              onLongPress: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasksCount,
        );
      }

    );
  }
}
