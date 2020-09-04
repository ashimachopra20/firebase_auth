import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Myreg extends StatefulWidget {
  @override
  
_MyregState createState() => _MyregState();
}
class _MyregState extends State<Myreg> {
  @override
  var f=FirebaseAuth.instance;
  String email;
  String password;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Center(child:Text('REGISTRATION'))),
      body:
       Column(
        
         children: <Widget>
         [
           Text("Enter your email"),
           TextField(
             onChanged: (value){
               email= value;
             },
             
           ),
           Text(("Enter your password")),
            TextField(
             onChanged: (value){
               password= value;
             },
             
           ),
           RaisedButton(padding: EdgeInsets.all(10),onPressed: () async {
             
            var User= await  f.createUserWithEmailAndPassword(email: email, password: password);
            print(User);
               if(User!=null){
              Navigator.popAndPushNamed(context, "/login");
              } 
              
              } ,child:Text("Register me")
           ),
         ],
    ));
  }
}