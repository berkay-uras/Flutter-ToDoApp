import "package:flutter/material.dart";

import 'package:berkay/makeMenu.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MakeMenu(),
      appBar: AppBar(
        title: Text("Faber Est Suae Quesque Fortunae"),
        centerTitle: true,
      ),
      body: Container(
       child: Center(
         child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 200,

                 child: Text(
                  "I am Berkay URAS.I am a computer engineering student at Istanbul Aydin University.I am always trying to do best and improve myself everytime.",
                  style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey,fontSize: 16),
                ),
              ),

        SizedBox(
          width: 800,
          height: 100,
          child:Image.asset( 
            "image/berkayuras.png",
            alignment: Alignment.center,
            ),
          )
        ],
       ),
      )
     ),
    );
  }
}
