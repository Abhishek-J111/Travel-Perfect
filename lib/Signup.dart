import 'package:flutter/material.dart';
import 'Homepage.dart';


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}


class _SignupPageState extends State<SignupPage>{

  GlobalKey<FormState> _key = new GlobalKey();
  
  //to store the input field
  String Name,Email,Phoneno;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        //to store the background image of signup page
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            
            fit: BoxFit.fill
        
          ),
        ),
            
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
             child: SingleChildScrollView(
                 child: Form(
                 key: _key,
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

                             decoration: InputDecoration(
                              labelText: ('User Name')
                          ),
                            onSaved: (input)=> Name=input,

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

                          decoration: InputDecoration(
                          labelText: ('User Email')
                          ),

                          onSaved: (input)=> Email=input,
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
                            return('Enter Phone no');
                          },

                          decoration: InputDecoration(
                          labelText: ('Phone no')
                          ),

                        onSaved: (input)=> Phoneno=input,

                        ),
                    ),
                     ),
                     Padding(padding: EdgeInsets.all(8.0)),
                    ButtonTheme(
                      height: 40.0,
                      minWidth: 150.0,
                      buttonColor: Colors.grey,
                       child: RaisedButton(  //Button for signup
                         onPressed: _sendToNextPage,
                         
                         child:  Text('Signup',
                              textAlign: TextAlign.center,
                              style: TextStyle(color:Colors.black),
                              ),
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20.0)
                          ),
                        ),
                      

                      ),

                    ],
                  ),
                
                ),
            )



      ),
             ),
        ),
      )
    );
  }
  _sendToNextPage(){
    if(_key.currentState.validate()){ //Saving the content for next page

      //saves global key
      _key.currentState.save();
      
      Navigator.push(context, 
        MaterialPageRoute(
          builder: (context) => Homepageless(
             name:Name,
             email:Email,
             phoneno:Phoneno,
          ))
      );
      
    }
  
  }
}