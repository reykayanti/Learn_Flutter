import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "tab1",
    ),
    Tab(
      text: "tab2",
    ),
    Tab(
      icon: Icon(Icons.login),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Apps"),
            bottom: TabBar(
              labelColor: Colors.black,
              indicator: BoxDecoration(color: Colors.pink),
              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Isi tab 1"),
              ),
              Center(
                child: Text("Isi tab 2"),
              ),
              Center(
                child: Text("Isi tab 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
