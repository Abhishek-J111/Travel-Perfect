import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Perfect'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ]
      ),


      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Abhishek Joshi'),
              accountEmail:  Text('aabhisheekk@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('AG'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),

            ListTile(
              title:  Text('Destinations'),
              trailing: Icon(Icons.place),
              onTap: () => Navigator.of(context).pushNamed('\a'),

            ),

            ListTile(
              title: Text(' Trek Companions'),
              trailing: Icon(Icons.group),
            ),

            ListTile(
              title: Text('Projects'),
            
            ),

            ListTile(
              title: Text('Videos'),
              trailing: Icon(Icons.video_label),
            ),

            ListTile(
              title: Text('Feedback'),
              trailing: Icon(Icons.feedback),
            ),

             ListTile(
              title: Text('Exit'),
              trailing: Icon(Icons.exit_to_app),
              onTap: () => Navigator.of(context).po,
            )
            
          ],
        ),
      ),

      body: 
      


    );
  }
}