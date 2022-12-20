import 'package:flutter/material.dart';

class Asignstura1 extends StatefulWidget {
  Asignstura1({Key? key}) : super(key: key);

  @override
  State<Asignstura1> createState() => _Asignstura1State();
}

class _Asignstura1State extends State<Asignstura1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.tag_faces),
          onPressed: () {},
        )
      ]),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
