import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
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
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.lightBlueAccent),

                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                onPressed: () {},
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
