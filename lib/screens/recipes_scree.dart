import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: ListTile(
              leading: Icon(Icons.android),
              title: Text("Title"),
              subtitle: Text("Categories"),
              onTap: () => {},
            ),
          ),
          ListTile(
            leading: Icon(Icons.android),
            title: Text('Android'),
          ),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text('Announcement'),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Apps'),
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
          ),
          ListTile(
            leading: Icon(Icons.assessment),
            title: Text('Assessment'),
          ),
          ListTile(
            leading: Icon(Icons.backup),
            title: Text('Backup'),
          ),
        ],
      ),
    );
  }
}
