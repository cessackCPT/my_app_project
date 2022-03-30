import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_project/feed/landing_page.dart';
import 'package:my_app_project/login/HomePage.dart';
import 'package:my_app_project/login/login_page.dart';
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
              text: 'Home',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Leaderboard',
              icon: Icons.leaderboard_outlined,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Prizes',
              icon: Icons.monetization_on,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Questions',
              icon: Icons.queue,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Answers',
              icon: Icons.question_answer_outlined,
              onClicked: () => selectedItem(context, 4),
            ),
            // const SizedBox(height: 16),
            // buildMenuItem(
            //   text: 'Logout',
            //   icon: Icons.question_answer_outlined,
            //   onClicked: () => selectedItem(context, 4),
            // ),
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
            builder: (context) => HomePage(),
          ));
          break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Profile(),
          ));
          break;
        case 2:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Land(),
          ));
          break;
        case 3:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Profile(),
          ));
          break;
        case 4:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Profile(),
          ));
          break;
        // case 5:
        //   Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => MyApp(),
        //   ));
        //   break;
      }
    }
  }
