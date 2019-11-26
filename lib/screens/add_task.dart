import 'package:flutter/material.dart';
import 'package:todoey_stub/model/task.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:todoey_stub/provider/taskhelper.dart';

class AddTask extends StatefulWidget {
//  final Function listvalue;
//   AddTask(this.listvalue);
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController _controller;
  String text_value = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
              ),
              TextField(
                controller: _controller,
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
                onChanged: (value) {
                  text_value = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed: () {
                  if (text_value.length == 0) {
                    Fluttertoast.showToast(
                        msg: "Please Enter Value",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 1
                    );
                  } else {

                   // _controller.clear();
                    //widget.listvalue(Task(name: text_value,isCheck: true));
                    Provider.of<TaskHelper>(context).addItems(Task(name: text_value,isCheck: true));
                    Navigator.pop(context);
                  }
                },
                color: Colors.lightBlue,
                child: Text(
                  'Add',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
