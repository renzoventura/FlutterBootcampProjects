import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              myRow(Colors.red),
              Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          myBox(Colors.yellow),
                          myBox(Colors.green),
                          CircleAvatar(
                          ),
                        ],
                      ),
              ),
              myRow(Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  Container myRow(MaterialColor myColor) {
    return Container(
      width: 100.0,
      color: myColor,
    );
  }

  Container myBox(MaterialColor myColor) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: myColor,
    );
  }

}




