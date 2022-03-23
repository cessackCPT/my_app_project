import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Leaderboard',
              icon: Icons.leaderboard_outlined,
            ),
          ],
        ),
      ),
    );
  }

    Widget buildMenuItem({
      required String text,
      required IconData icon,
    }) {
      final color = Colors.white;
      return ListTile(
        leading: Icon(icon, color: color),
        title: Text(text,
            style: TextStyle(color: color)),
      );

    }
  }
