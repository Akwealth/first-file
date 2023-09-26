import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.asset(
            "images/image1.jpg",
          ),
        ),
        backgroundColor: Colors.purpleAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Login Page"),
        ),
      ),
    ),
  );
}

// intro to material app design, this code was tested and run with iphone 14 simulator,
// also i use cmd + opt + L to reformat the code
