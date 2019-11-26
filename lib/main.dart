
import 'package:flutter/material.dart';
import 'package:todoey_stub/provider/taskhelper.dart';
import 'package:todoey_stub/screens/tasks_screen.dart';
import 'package:provider/provider.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskHelper>(
      builder: (context) => TaskHelper(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: TasksScreen(),

      ),
    );
  }
}

