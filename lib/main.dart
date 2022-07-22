import 'package:flutter/material.dart';
import 'package:peto/login.dart';
import 'package:peto/register.dart';
import 'package:peto/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin(),
      'register':(context)=>MyRegister(),
      'home': (context)=>Myhome(),
    },
  ));
}

