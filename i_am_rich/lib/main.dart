import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
        title: Text("Hello world"),
        backgroundColor: Colors.amber[200],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/mario.jpg'),
        ),
      ),
    )),
  );
}
