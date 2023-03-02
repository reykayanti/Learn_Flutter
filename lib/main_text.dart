import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan debug banner
      home: Scaffold(
        body: Center(
          child: Text(
            "Hallo ini body, gue mau test penempatan text alignnya udah bener atau belum",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'tiltneon',
              fontSize: 18,
            ),
          ),
        ),
        appBar: AppBar(
          centerTitle: false, //ganti true kalau mau titlenya ditengah
          title: Text("Title AppBar"),
        ),
      ),
    );
  }
}
