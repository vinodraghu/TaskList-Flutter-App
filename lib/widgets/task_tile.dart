import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.isCheckValue,this.textValue,this.checkBoxCallback});
  final bool isCheckValue;
  final String textValue;
  final Function checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$textValue',
        style: TextStyle(
            decoration: isCheckValue
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isCheckValue,
        onChanged: checkBoxCallback,
      ),
    );
  }
}



