import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:peto/auth/auth_page.dart';
import 'package:peto/home.dart';
import 'package:peto/login.dart';
import 'package:peto/pages/home_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
            if(snapshot.hasData){
              return Myhome();
            }else{
              return MyLogin();
            }
        }
      ),
    );
  }
}
