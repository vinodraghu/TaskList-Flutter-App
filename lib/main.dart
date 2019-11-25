
import 'package:flutter/material.dart';
import 'package:todoey_stub/screens/tasks_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: TasksScreen(),

    );
  }
}