import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colum"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 230,
              height: 50,
              color: Color.fromARGB(255, 190, 108, 60),
            ),
            Container(
              width: 100,
              height: 50,
              color: Color.fromARGB(255, 80, 151, 153),
            )
          ],
        ),
      ),
    );
  }
}
