import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:peto/pages/home_page.dart';
import 'package:peto/pages/Help.dart';
import 'package:peto/pages/profile_page.dart';
class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}
class _MyhomeState extends State<Myhome> {
  int  index=0;

  @override
  Widget build(BuildContext context) {

     final screens = [
       home_page(),
       help_petss(),
       Myprofile(),
     ];
    final items =<Widget>[
      Icon(Icons.home,size: 30),
      Icon(Icons.pets_outlined,size: 30),
      Icon(Icons.person,size: 30),
    ];

    return  Container(
      color: Colors.white,
      child: SafeArea(
        top:false,
        child:Scaffold(
        body: screens[index],
        extendBody: true,
        backgroundColor: Colors.black,
      // appBar: AppBar,
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black26, // nav bar color
        backgroundColor: Colors.transparent,
        items: items,
        index: index,
        height: 55,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index)=>setState(() {
          this.index=index;
        }
        ),
      ),

      ),
      ),
    );
  }
}
