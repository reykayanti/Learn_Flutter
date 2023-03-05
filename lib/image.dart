import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Image(
            image: AssetImage("images/lombok.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
  }
}
