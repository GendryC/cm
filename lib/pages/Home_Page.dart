import 'package:cm/pages/Routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String microbiologia = "Microbiologia";
  String soma = "SOMA";
  String bioquimica = "Bioquimica";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuilder(),
      drawer: _drawerBuilder(context),
      body: _bodyListViewBuilder(),
    );
  }

  Drawer _drawerBuilder(BuildContext context) {
    return Drawer(
      child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Pagina Principal'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: Text('$soma'),
              onTap: () => Navigator.push(context, Asignatura(soma)),
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: Text('$microbiologia'),
              onTap: () => Navigator.push(context, Asignatura(microbiologia)),
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: Text('$bioquimica'),
              onTap: () => Navigator.push(context, Asignatura(bioquimica)),
            ),
          ]),
    );
  }

  AppBar _appBarBuilder() {
    return AppBar(centerTitle: true, title: Text("App"), actions: <Widget>[
      IconButton(
        icon: const FlutterLogo(),
        onPressed: () {
          Navigator.push(context, UserPage());
        },
      )
    ]);
  }

  ListView _bodyListViewBuilder() {
    return ListView(
      children: [_cardBuilder()],
    );
  }
}

Widget _cardBuilder() {
  return (Text("s"));
}
