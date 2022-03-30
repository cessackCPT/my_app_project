import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_project/widgets/navigation_drawer_widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

//initial idea for leaderboard

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text( "My Rank", style: TextStyle(fontSize: 29), ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Leaderboard",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: SizedBox(
                height: 300,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Row(
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  // "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"
                              "https://media.istockphoto.com/vectors/user-icon-flat-isolated-on-white-background-user-symbol-vector-vector-id1300845620?k=20&m=1300845620&s=612x612&w=0&h=f4XTZDAv7NPuZbG0habSpU0sNgECM0X7nbKzTUta3n8="
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("Michael Smith")
                          ],
                        ),
                        leading: Text("#${index + 1}" ,style: const TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Text(
                            "Score: ${(200000 / (index + 1)).toString().substring(0, 5)}",style: const TextStyle(fontWeight: FontWeight.bold)),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(thickness: 1,color: Colors.white,indent: 10,endIndent: 10,),
                    itemCount: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}