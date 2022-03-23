import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("images/brainstorm.jpg"),
              fit: BoxFit.cover),
            ),
        ),
        ),
    );
  }
}