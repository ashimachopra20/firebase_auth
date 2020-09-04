import 'package:Firebase_egapp/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text(
"HOME PAGE")),
body: Center(
  child:   Column(
  
    children: <Widget>[
  
          RaisedButton(padding: EdgeInsets.all(10),onPressed: () { 
            Navigator.popAndPushNamed(context, "/reg");
            },
  
      
  
      child: Text("REGISTER NOW")),
       RaisedButton(padding: EdgeInsets.all(10),onPressed: () {
          Navigator.popAndPushNamed(context, "/login");
          },
  
      
  
      child: Text("LOGIN")),
  
    ],
  
  ),
),
    );
  }
}