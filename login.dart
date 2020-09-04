import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
class Mylogin extends StatefulWidget {
  @override
_MyloginState createState() => _MyloginState();

 
  
}
class _MyloginState extends State<Mylogin> {
  @override
  
String email;
String password;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("LOGIN")),
      body: Column(
        children: <Widget>[
          Text('Enter Username'),
          TextField(
             onChanged: (value){
                email= value;
             },
             
           ),
          Text('Enter Password'),
          TextField(
             onChanged: (value){
               password= value;
             },
             
           ),
            RaisedButton(padding: EdgeInsets.all(10),onPressed: () async {
              var f= FirebaseAuth.instance;
             
            var signin= await f.signInWithEmailAndPassword(email: email, password: password);
           // print(signin); 
            if(signin!=null){
              Navigator.popAndPushNamed(context, "/chat");
              } },child:Text("Login")
           ),
        ],
      ),
      
    );
  }
}