import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final List<Color> myColor = [
    Colors.purple,
    Color.fromARGB(255, 194, 99, 211),
    Color.fromARGB(255, 82, 135, 184),
    Color.fromARGB(255, 14, 20, 13),
    Color.fromARGB(255, 194, 99, 211),
  ];

  final List<Widget> textAngka = List.generate(
    30,
    (index) => Text(
      index.toString(),
      style: TextStyle(
        // Fontsize membutuhkan double dan index merupakan integer
        // Maka index harus diubah ke double agar bisa digunakan sebagai fontsize
        fontSize: 20 + double.parse(index.toString()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colum"),
        ),

        // body: ListView.builder(
        //   // itemCount: 4,
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 100,
        //       width: 40,
        //       color: myColor[index],
        //     );
        //   },
        // ),

        // body: ListView.separated(
        //   //untuk menambahkan jarak
        //   // itemCount: 4,
        //   separatorBuilder: (context, index) {
        //     return Container(
        //       //jarak juga bisa dikasih warna
        //       height: 10,
        //     );
        //   },
        //   itemCount: myColor.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       height: 100,
        //       width: 40,
        //       color: myColor[index],
        //     );
        //   },
        // ),

        body: ListView(
          children: textAngka,
        ),
      ),
    );
  }
}
