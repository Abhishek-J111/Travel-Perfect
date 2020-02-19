import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}


class _SignupPageState extends State<SignupPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
            
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  child: Form(

            
            
            child: Padding(
              padding: EdgeInsets.all(40.0),
                         child: Card(
                           color: Colors.transparent,
                 shape:RoundedRectangleBorder(
                   borderRadius : BorderRadius.circular(10.0),
                ),

                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                  Text("TRAVEL PERFECT",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.normal,fontSize: 40,color: Colors.white60),

                  ),
                  Card(
                                color: Colors.transparent,
                                    child: ListTile(
                      leading:Icon(Icons.person,color: Colors.black,size: 30.0,),
                      title: TextFormField(
                        validator: (input){
                          if(input.isEmpty)
                          return('Enter name');
                        },

                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                   Card(
                               color: Colors.transparent,      
                        child: ListTile(
                      leading:Icon(Icons.email,color: Colors.black,size: 30.0,),
                      title: TextFormField(
                        validator: (input){
                          if(input.isEmpty)
                          return('Enter email');
                        },

                      ),
                  ),
                   ),

                   Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                   Card(
                        color: Colors.transparent,
                       child: ListTile(
                      leading:Icon(Icons.phone,color: Colors.black,size: 30.0,),
                      title: TextFormField(
                        validator: (input){
                          if(input.isEmpty)
                          return('Enter email');
                        },

                      ),
                  ),
                   )

                  ],
                ),
              ),
            )

      ),
        ),
      )
    );
  }
}