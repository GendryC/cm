import 'package:flutter/material.dart';

class Asignatura extends MaterialPageRoute<void> {
  Asignatura(String pagetitle)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(pagetitle),
            ),
          );
        });
}

class UserPage extends MaterialPageRoute<void> {
  UserPage({Key? key})
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("User"),
              elevation: 1.0,
            ),
          );
        });
}
