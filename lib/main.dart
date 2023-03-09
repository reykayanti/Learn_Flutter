import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angkaAdd = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Statefull Angka"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Min di angka 0 dan Max diangka 10.",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                angkaAdd.toString(),
                style: TextStyle(
                  fontSize: 20 +
                      double.parse(
                        //untuk mengubah nilai angkaAdd menjadi string, lalu dari string menjadi double
                        angkaAdd.toString(),
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (angkaAdd != 0) {
                        setState(() {
                          angkaAdd--;
                        });
                      }
                      // print ini hanya untuk muncul di debug console
                      // print(angkaAdd);
                    },
                    child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (angkaAdd != 10) {
                        setState(() {
                          angkaAdd++;
                        });
                      }
                      // print ini hanya untuk muncul di debug console
                      // print(angkaAdd);
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
