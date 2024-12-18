// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:newapp/pgs/firstpg.dart';
import 'package:newapp/pgs/home_page.dart';
import 'package:newapp/pgs/settings_page.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,//remove debug banner
    home: FirstPage(),
    routes:{
      '/firstpg': (context) => FirstPage(),
      '/homepage': (context) => HomePage(),
      '/settingspage': (context) => SettingsPage(),
 
    },   
     );
    }
}
