import 'package:contador/src/pages/contador_pages.dart';
import 'package:contador/src/pages/home_pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage()
      ) 
    );
  }
}