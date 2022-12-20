import 'package:flutter/material.dart';

class Asignatura extends StatefulWidget {
  Asignatura({Key? key}) : super(key: key);

  @override
  State<Asignatura> createState() => _AsignaturaState();
}

class _AsignaturaState extends State<Asignatura> {
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
