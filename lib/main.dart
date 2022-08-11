import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:peto/login.dart';
import 'package:peto/auth/main_page.dart';
import 'package:peto/register.dart';
import 'package:peto/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
    // initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'register':(context)=>MyRegister(),
      'home': (context)=>Myhome(),
    },
  ));
}

