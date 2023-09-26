import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Container(
              color: Colors.white,
              height: 200,
              width: 150
              margin: EdgeInsets.all(150),
          padding: EdgeInsets.all(40),
          child: Text('Container example'),
        ),
      ),
    ),);
  }
}
