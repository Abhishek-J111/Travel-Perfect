  
// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travelperfect/Add_Guide.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'Guide_Information.dart';


class Homepage1 extends StatefulWidget {

  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {

//  _DestinationPage(){
//    Navigator.push(context, 
//    MaterialPageRoute(builder: (context)=> Homepage()));
//  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;
  bool isSigned = false;

  checkAuthentication() {
    _auth.onAuthStateChanged.listen((user) {
      if(user == null){
        Navigator.pushReplacementNamed(context, "/SigninPage");

      }
    });
  }

   getuser() async {
    FirebaseUser firebaseuser = await _auth.currentUser();
    await  firebaseuser?.reload();
    firebaseuser = await _auth.currentUser();

    if(firebaseuser != null) {
      setState(() {
        this.user= firebaseuser;
        this.isSigned= true;
      });
    }
    print(this.user);

  }

  signOut() async {
    _auth.signOut();
  }

//Function To Launch Hotel Booking URL
  launchHotelBooking() async{
    const url= 'https://www.oyorooms.com/np/';
    if(await canLaunch(url)){
      print('URL being Launched');
      await launch(url);
    }
    else{
      throw 'Could not launch URL';
    }
  }

  launchAirlineBooking() async{
    const url= 'https://sastotickets.com/';
    if(await canLaunch(url)){
      print('URL being Launched');
      await launch(url,);
    }
    else{
      throw 'Could not launch URL';
    }
  }
  @override
  void initState(){
    super.initState();
    this.checkAuthentication();
    this.getuser();
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
              accountName: Text((user.displayName)),
              accountEmail:  Text(user.email),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(user.displayName.substring(0,1)),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),

            ListTile(
              title:  Text('Destinations'),
              trailing: Icon(Icons.place),
             onTap: () => Navigator.of(context).pushNamed('\DestinationPage'),

            ),

            ListTile(
              title: Text('Guide Registration'),
              trailing: Icon(Icons.group),
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=> AddGuide()
                    )
                  );
              },
            ),

            ListTile(
              title: Text('Hotel Booking'),
              trailing: Icon(Icons.hotel),
              // onTap: launchHotelBooking(),
            
            ),

            ListTile(
              title: Text("Airlines"),
              trailing: Icon(Icons.flight_takeoff),
              // onTap: launchAirlineBooking(), 
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
              title: Text('Signout'),
              trailing: Icon(Icons.exit_to_app),
              onTap: signOut,
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
            Navigator.of(context).pushNamed('/DestinationPage');
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
              
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> GuideInformation()));
          }
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
              
          onTap: (){
            print('Launching URL');
            launchHotelBooking();
          }
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
              
          onTap: (){
            launchAirlineBooking();
          }
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