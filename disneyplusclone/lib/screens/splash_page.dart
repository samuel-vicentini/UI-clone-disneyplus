// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
      padding: EdgeInsets.symmetric(horizontal: 70.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            stops: [0.4, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [Color.fromRGBO(14, 22, 68, 1), Color.fromRGBO(29, 60, 139, 1)]
        ),
      ),
      child: Center(child: Image.asset('assets/disney_plus_logo.png', width: 200, height: 200)),
    )
    );
  }
}