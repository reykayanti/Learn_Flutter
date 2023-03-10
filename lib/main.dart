import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "name": "Eka",
      "age": 22,
      "favColor": ["black", "red", "green"],
    },
    {
      "name": "Eka",
      "age": 22,
      "favColor": ["black", "red", "green"],
    },
    {
      "name": "Eka",
      "age": 22,
      "favColor": [
        "black",
        "red",
        "green",
        "black",
        "red",
        "green",
        "black",
        "red",
        "green"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping"),
        ),
        body: ListView(
          children: myList.map((data) {
            // print(data['favColor']);
            List favColor = data['favColor'];
            return Card(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          // Text("Name : ${data['name']}"),
                          Text("Name : " + data['name']),
                          Text("Age : ${data['age']}"),
                          // Text("Age : " + data["age"].toString()),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: favColor.map((color) {
                      return Container(
                        child: Text(color),
                        color: Colors.amber,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
