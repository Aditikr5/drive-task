import 'package:flutter/material.dart';
import 'package:task/main.dart';
import 'package:task/screens/login_screen.dart';
import 'package:task/screens/profile_screen.dart';
import 'package:task/screens/register_screen.dart';

Map<String, WidgetBuilder> routes ={
  '/': (BuildContext context) => MyHomePage(),
  '/First_screen':(BuildContext context) => LoginScreen(),
  '/Second_screen':(BuildContext context) => RegisterScreen(),
   '/Second_screen':(BuildContext context) => ProfileScreen(),
};