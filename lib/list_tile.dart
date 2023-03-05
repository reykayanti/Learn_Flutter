import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: ListView(
          children: [
            ListTile(
              // contentPadding: EdgeInsets.all(10),
              title: Text("Reykayanti"),
              subtitle: Text(
                "Web Development Web Development Web Development Web Development Web Development Web Development",
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              trailing: Text("10.00 PM"),
            ),
            Divider(),
            ListTile(
              title: Text("Reykayanti"),
              subtitle: Text("Web Development"),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
            ),
            Divider(),
            ListTile(
              title: Text("Reykayanti"),
              subtitle: Text("Web Development"),
              leading: CircleAvatar(),
              trailing: Text("10.00 PM"),
            ),
          ],
        ),
      ),
    );
  }
}
