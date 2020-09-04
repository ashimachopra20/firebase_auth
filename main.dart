import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/register.dart';
import 'screens/login.dart';
import 'screens/chat.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() {
WidgetsFlutterBinding.ensureInitialized();
Firebase.initializeApp(); 
 runApp(MaterialApp(
    initialRoute: "/",
    routes:{
      "/": (context )=>Myhome(),
      "/reg":(context )=> Myreg(),
      "/login":(context )=>Mylogin(),
      "/chat":(context )=> Mychat(),
    } ,
    debugShowCheckedModeBanner: false,
  )
  );
}

