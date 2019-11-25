import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.isCheckValue,this.textValue});
  final bool isCheckValue;
  final String textValue;

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
       // checkClick:
      ),
    );
  }
}

//(value) {
//setState(
//() {
//isCheckValue = value;
//},
//);
//},

