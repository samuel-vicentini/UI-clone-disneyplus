// ignore_for_file: prefer_const_constructors
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:prova2tri_disneyplusclone/screens/navbar_page.dart';
import 'package:prova2tri_disneyplusclone/screens/splash_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen.withScreenFunction(
      duration: 2000,
      splashIconSize: 1000,
      splash: SplashPage(),
      screenFunction: () async {
        return NavBar();
      },
    )));
}