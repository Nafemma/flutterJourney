// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("1st page"),
      backgroundColor: Colors.deepPurple),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.pink,
              )
              ),
              //homepage list tile
              ListTile(
                leading:Icon(Icons.home),
                title: Text("H O M E"),
                onTap:(){
                  //pop drawer first
                  Navigator.pop(context);
                  //go to home page
                  Navigator.pushNamed(context, '/homepage');

                }
              ),
              //setting page list tile
              ListTile(
                leading:Icon(Icons.settings),
                title: Text("S E T T I N G S"),
                onTap:(){
                  Navigator.pushNamed(context, '/settingspage');
                }
              )
          ],)
      ),
    );
  }
}