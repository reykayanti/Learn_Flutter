import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Datetime & Appbar"),
          backgroundColor: Colors.amber,
          actions: [
            Container(
              padding: EdgeInsets.all(10),
              child: Image(
                height: 20,
                width: 20,
                image: AssetImage('images/search.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Image(
                height: 20,
                width: 20,
                image: AssetImage('images/user.png'),
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 240, 240),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Menampilkan tanggal menggunakan package intl.",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          DateTime.now().toString(),
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    height: 180,
                    width: 380,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
