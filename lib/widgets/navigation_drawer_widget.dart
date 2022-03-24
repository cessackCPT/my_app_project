import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_project/ranking/leaderboard.dart';

class NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.indigo,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Leaderboard',
              icon: Icons.leaderboard_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Prizes',
              icon: Icons.monetization_on,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Questions',
              icon: Icons.queue,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Answers',
              icon: Icons.question_answer_outlined,
            ),
          ],
        ),
      ),
    );
  }

    Widget buildMenuItem({
      required String text,
      required IconData icon,
      //for the links
      VoidCallback? onClicked,
    }) {
      final color = Colors.white;
      final hoverColor = Colors.black12;
      return ListTile(
        leading: Icon(icon, color: color),
        title: Text(text,
            style: TextStyle(color: color)),
        hoverColor: hoverColor,
        onTap: onClicked,
      );
    }

    void selectedItem(BuildContext context, int index){
      switch (index){
        case 0:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Profile(),
          ));
          break;
      }
    }
  }
