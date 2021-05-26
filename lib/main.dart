import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice Roller",
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

int rolldice=1;

  changedice(){
  setState(() {
    rolldice=Random().nextInt(6)+1;
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dice Roller"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset(
                "$rolldice.png",
                height: 250,
              ),
              SizedBox(height: 20),
              FlatButton(
                minWidth: 300.0,
                height: 45.0,
                  color: Colors.green,
                  onPressed:changedice,
                  child: Text(
                    "Roll Dice",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    
                  )
                  
                  ),
                  SizedBox(height:200),
                  Text("Developed by : Santosh Pant" , style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),)

            ],
          ),
        ));
  }
}
