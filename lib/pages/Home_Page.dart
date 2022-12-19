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
      appBar: AppBar(actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.tag_faces),
          onPressed: () {},
        )
      ]),
      drawer: Drawer(
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
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
<<<<<<< HEAD
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
=======
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
>>>>>>> 4a2d2659cf7ce49ba3d86e59ae50f3576f87bde8
        ],
      ),
    );
  }
}
