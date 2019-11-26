import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_stub/model/task.dart';


class TaskList extends StatefulWidget {
    final List<Task> listvalue;
    TaskList(this.listvalue);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          textValue: widget.listvalue[index].name,
          isCheckValue: widget.listvalue[index].isCheck,
          checkBoxCallback: (value) {
            setState(
              () {
                widget.listvalue[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.listvalue.length,
    );
  }
}
