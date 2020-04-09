

import 'package:flutter/material.dart';
import 'Homepage.dart';


class  Homepageless extends StatelessWidget {
   final String name,email,phoneno;
   
    Homepageless(
        {
          Key key,
          @required
          this.name,
          this.email,
          this.phoneno,
        }
   ) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Homepage1()
      
    );
  }
}

class Homepage1 extends StatefulWidget {


  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {

 _DestinationPage(){
   Navigator.push(context, 
   MaterialPageRoute(builder: (context)=> Homepage()));
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Travel Perfect'),
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
              title: Text('Hotel Booking'),
              trailing: Icon(Icons.hotel),
            
            ),

            ListTile(
              title: Text("Airlines"),
              trailing: Icon(Icons.flight_takeoff), 
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
              onTap: () => Navigator.of(context).pop(),
            )
            
          ],
        ),
      ),

      body: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          
         
           GestureDetector(
            child: Container(
              height: 20.0,
              width:20.0,
              padding: const EdgeInsets.all(8),
            //  // child: IconButton(icon: Icons., onPressed: null),
            
               child: Column(
                 children: <Widget>[
                   Icon(Icons.place, size: 35.0,color: Colors.blue,),
                   Text('Destination',
                   textAlign: TextAlign.justify,)
                 ],
               )
           ),
              
          onTap: (){
            _DestinationPage();
            }
          ),
           GestureDetector(
            child: Container(
              height: 20.0,
              width:20.0,
              padding: const EdgeInsets.all(8),
        
               child: Column(
                 children: <Widget>[
                   Icon(Icons.person, size: 35.0,color: Colors.blue,),
                   Text('Travel Companion',
                   textAlign: TextAlign.center,)
                 ],
               )
           ),
              
          onTap: (){}
          ),
          GestureDetector(
            child: Container(
              height: 20.0,
              width:20.0,
              padding: const EdgeInsets.all(8),
        
               child: Column(
                 children: <Widget>[
                   Icon(Icons.hotel, size: 35.0,color: Colors.blue,),
                   Text('Hotel Booking',
                   textAlign: TextAlign.center,)
                 ],
               )
           ),
              
          onTap: (){}
          ),
          GestureDetector(
            child: Container(
              height: 20.0,
              width:20.0,
              padding: const EdgeInsets.all(8),
        
               child: Column(
                 children: <Widget>[
                   Icon(Icons.flight_takeoff, size: 35.0,color: Colors.blue,),
                   Text('Airlines',
                   textAlign: TextAlign.center,)
                 ],
               )
           ),
              
          onTap: (){}
          ),
         GestureDetector(
            child: Container(
              height: 20.0,
              width:20.0,
              padding: const EdgeInsets.all(8),
        
               child: Column(
                 children: <Widget>[
                   Icon(Icons.video_label, size: 35.0,color: Colors.blue,),
                   Text('Videos',
                   textAlign: TextAlign.center,)
                 ],
               )
           ),
              
          onTap: (){}
          ),
          GestureDetector(
            child: Container(
              height: 20.0,
              width:20.0,
              padding: const EdgeInsets.all(8),
        
               child: Column(
                 children: <Widget>[
                   Icon(Icons.more_horiz, size: 35.0,color: Colors.blue,),
                   Text('View More',
                   textAlign: TextAlign.center,)
                 ],
               )
           ),
              
          onTap: (){}
          ),
        ],
      ),
    ),
  ],
)
    );
  }
}