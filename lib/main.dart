import 'package:flutter/material.dart';
import './product_manager.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List1'),
        ),
        body: ProductManager(startingProduct:'View Tester'),
      ),
    ); //object of material app class
  }
}
