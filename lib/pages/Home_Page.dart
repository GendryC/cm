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
                color: Color.fromARGB(255, 243, 33, 226),
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
              onTap: () => Navigator.of(context).push(_NewPage(soma)),
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: Text('$microbiologia'),
                onTap: () => Navigator.of(context).push(_NewPage(microbiologia)),
            ),
            ListTile(
              leading: Icon(
                Icons.adjust,
              ),
              title: Text('$bioquimica'),
              onTap: () => Navigator.of(context).push(_NewPage(bioquimica)),
            ),
          ]),
    );
  }

  AppBar _appBarBuilder() {
    return AppBar(actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.tag_faces),
        onPressed: () {},
      )
    ]);
  }

  ListView _bodyListViewBuilder() {
    return ListView(
      children: [],
    );
  }

}
class _NewPage extends MaterialPageRoute<void>{
_NewPage(String asignatura)
:super(
builder: (BuildContext context){
return Scaffold(
appBar: AppBar(
title: Text('$asignatura'),
elevation: 1.0,

),

);

},

);

}
