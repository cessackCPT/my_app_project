import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_project/widgets/navigation_drawer_widget.dart';

class Land extends StatelessWidget {
  const Land({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prizes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Prizes'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage("images/vouchers.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}