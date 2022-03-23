import 'package:flutter/material.dart';
import 'package:my_app_project/widgets/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
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