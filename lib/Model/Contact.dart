import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';


class Contact{
  String _id;
  String _firstName;
  String _lastName;
  String _phone;
  String  _email;
  String  _address;
  String _displayPhotoUrl;
  String _guideId;
  String _age;
  String _route;

  //Constructor For Adding Data
  Contact(this._firstName,this._lastName,this._phone,this._address,this._email,this._displayPhotoUrl,_guideId,_age,_route);


  //Constructor For Editing Data
  Contact.withId(this._id,this._firstName,this._lastName,this._phone,this._address,this._email,this._displayPhotoUrl,_guideId,_age,_route);

  //getters 
  String get id => this._id;
  String get firstName => this._firstName;
  String get lastName => this._lastName;
  String get phone => this._phone;
  String get address => this._address;
  String get email => this._email;
  String get photoUrl => this._displayPhotoUrl;
  String get guideId => this._guideId;
  String get age => this._age;
  String get route => this._route;

  //Setters
  set firstName(String firstName){
    this._firstName = firstName;
  }

  set lastName(String lastName){
    this._lastName = firstName;
  }
  set phone(String phone){
    this._phone = phone;
  }
  set address(String address){
    this._address = address;
  }
  set email(String email){
    this._email = email;
  }
  set photoUrl(String photoUrl){
    this._displayPhotoUrl = photoUrl;
  }
  set guideId(String guideId){
    this._guideId = guideId;
  }
  set age(String age){
    this._age = age;
  }
  set route(String route){
    this._route = route;
  }
  Contact.fromSnapshot(DataSnapshot snapshot){
    this._id = snapshot.key;
    this._firstName = snapshot.value['firstName'];
    this._lastName = snapshot.value['lastName'];
    this._phone = snapshot.value['phone'];
    this._address = snapshot.value['address'];
    this._email = snapshot.value['email'];
    this._displayPhotoUrl = snapshot.value['photoUrl'];
    this._guideId= snapshot.value['guideId'];
    this._age= snapshot.value['age'];
    this._route= snapshot.value['route'];
  }

  Map<String,dynamic> toJson (){
    return{
      "firstName":_firstName,
      "lastName":_lastName,
      "phone":_phone,
      "address":_address,
      "email":_email,
      "photoUrl":_displayPhotoUrl,
      "guideId":_guideId,
      "age":_age,
      "route":_route
    };
  }
}