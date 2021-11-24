// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './navbar.dart';
import './landing.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: homePage(),
     
    );
  }
}
class homePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight, 
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
                Color.fromRGBO(105, 60, 50, 1.0),
                Color.fromRGBO(36, 31, 54, 1.0)
            ]),
          
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
