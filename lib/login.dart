import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peto/Animation/FadeAnimation.dart';
import 'package:peto/register.dart';

class MyLogin extends StatefulWidget {

  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyloginState();
}

class _MyloginState extends State<MyLogin> {

// text field string
 final _emailController= TextEditingController();
 final _passwordController= TextEditingController();
 Future signIn() async{
   await FirebaseAuth.instance.signInWithEmailAndPassword(
       email: _emailController.text.trim(),
       password: _passwordController.text.trim()
   );
}

  @override
  void dispose(){
   _emailController.dispose();
   _passwordController.dispose();
   super.dispose();
  }
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    height: 400,
                    width: width,
                    child: FadeAnimation(1, Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/background.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    )),
                  ),
                  Positioned(
                    top: 45,
                    height: 300,
                    width: width+15,
                    child: FadeAnimation(1, Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/bcakground-2.png'),
                              fit: BoxFit.fitHeight
                          )
                      ),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1.5, Text("Login", style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 30),)),
                  SizedBox(height: 30,),
                  FadeAnimation(1.7, Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(196, 135, 198, .3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                  color: Colors.grey
                              ))
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 20),
                  FadeAnimation(1.7,
                      Center(
                          child: TextButton(
                              onPressed: () { },
                              child: Text("Forgot Password?",
                            style: TextStyle(
                                color: Color.fromRGBO(196, 135, 198, 1)),
                          )
                      )
                      )
                  ),
                  SizedBox(height: 10,),
                  FadeAnimation(1.9,
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(49, 39, 79, 1),
                    ),
                      child: Center(
                        child: TextButton(
                          onPressed: (){signIn();},
                          child: Text("Login", style: TextStyle(color: Colors.white),)
                    ),
                    ),
                  ),

                  ),
                  SizedBox(height: 10,),
                  FadeAnimation(2,
                      Center(
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context,'register');
                            },
                              child:Text("Create Account", style: TextStyle(color: Color.fromRGBO(49, 39, 79, .6)),
                              )
                          ),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}