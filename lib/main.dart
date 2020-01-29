import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Destination.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Perfect',

      debugShowCheckedModeBanner: false,

      home:Homepage(),

      routes: <String,WidgetBuilder> {
        "\a" : (BuildContext context ) => Destination()

      },
      
    );
  }
}
