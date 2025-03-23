
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/ToDoPage.dart';

void main(){
  runApp(MyApp());
}




class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false, 
      ),
      title: "To Do App",
      home: ToDoPage(),
    );
  }
}