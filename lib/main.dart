import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "tab2",
    ),
    Tab(
      text: "tab3",
    ),
    Tab(
      icon: Icon(Icons.login),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        title: Text("My Apps"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: DefaultTabController(
            length: myTab.length,
            child: TabBar(
              labelColor: Colors.black,
              indicator: BoxDecoration(color: Colors.pink),
              tabs: myTab,
            ),
          ),
        ),
      )),
    );
  }
}
