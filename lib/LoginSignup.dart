
import 'package:flutter/material.dart';
import 'package:travelperfect/Signup.dart';


class LoginSignup extends StatefulWidget {
  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {

  _Signup()
     {
       Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => SignupPage()));
     }
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
     body: Container(
      
         decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/login-signup.jpeg"),
            fit: BoxFit.cover,
          ),
        ),

         child: Center(
           child: Container(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                             Center(
                               child: Padding(
                                 padding: const EdgeInsets.fromLTRB(0.0,250.0,0.0,0.0),
                                 child: ButtonTheme(
                                   height: 50.0,
                                   minWidth: 200.0,
                                   buttonColor: Colors.grey,
                                                                    child: RaisedButton(  //Button for signup
                                         onPressed: _Signup,
                                         
                                         child:  Text('Signup',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color:Colors.black),
                                              ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:BorderRadius.circular(40.0)
                                          ),
                                        ),
                                 ),
                               ),
                             ),
                             

                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
                                  child: ButtonTheme(
                                     height: 50.0,
                                     minWidth: 200.0,
                                     buttonColor: Colors.grey,
                                    

                                      child: RaisedButton(
                                      onPressed: () {},
                                        child:  Text('Signin',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color:Colors.black),
                                              ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:BorderRadius.circular(40.0)
                                          ),
                                        ),
                                  ),
                                ),
                              ),

                      
                          
                          ],
                        ),

                        
             ),
             
           ),
           
         ),

     
        

     ),

     
     
    );
    
    
  }
  
}