import 'package:flutter/material.dart';


class ListTileWidget extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkedCallback;
  final Function onLongPress;


  ListTileWidget({this.taskTitle, this.isChecked, this.checkedCallback, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.black,
          fontSize: 18,
        ),),
      onLongPress: onLongPress,
      trailing: Checkbox(

        value: isChecked,
        onChanged: (newValue){
          checkedCallback(newValue);
        },

      ),
    );
  }
}
//  onChanged: (newValue){
//  setState(() {
//  isChecked = newValue;
//  });
//  }