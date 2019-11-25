class Task {
  String name;
  bool isCheck;

  Task({this.name,this.isCheck=false});

  void toggleDone()
  {
    isCheck = !isCheck;
  }
}