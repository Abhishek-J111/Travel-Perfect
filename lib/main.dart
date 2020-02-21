import 'package:flutter/material.dart';
//import 'Homepage.dart';
import 'LoginSignup.dart';
//import 'Signup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Perfect',

      debugShowCheckedModeBanner: false,

      home:LoginSignup(),

      // routes: <String,WidgetBuilder> {
      //   "\a" : (BuildContext context ) => Destination()

      // },
      
    );
  }
}
