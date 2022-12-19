import 'package:cm/pages/User_Page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
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
              title: const Text('SOMA '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: const Text('Microbiologia'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: const Text('Bioquimica'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ]),
    );
  }

  AppBar _appBarBuilder() {
    return AppBar(centerTitle: true, title: Text("App"), actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.tag_faces),
        onPressed: () {
          UserPage();
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
