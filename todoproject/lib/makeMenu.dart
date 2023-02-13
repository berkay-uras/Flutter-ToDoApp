import 'package:flutter/material.dart';
import 'package:berkay/main.dart';
import 'package:berkay/aboutMe.dart';

class MakeMenu extends StatefulWidget {
@override
_MakeMenuState createState() => _MakeMenuState();
}

class _MakeMenuState extends State<MakeMenu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TODO APP"), centerTitle: true),
      body: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              accountName:
              Text(
                "Berkay URAS",
                style: TextStyle(
                  fontSize: 20,
                ),

              ),

              accountEmail: Text(
                "berkayuras3327@gmail.com ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              currentAccountPicture:

              Image.asset(
                "image/to-do-list.png",
                alignment: Alignment.center,

              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text("HOME PAGE"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Wharf()));
                    },
                  ),

                  ListTile(
                      leading: Icon(Icons.chat_bubble_outline_sharp),
                      title: Text("ABOUT ME"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AboutMe()));
                      }),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}