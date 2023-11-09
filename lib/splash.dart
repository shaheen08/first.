import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Myapp(),
      )));
}

class Myapp extends StatefulWidget {  @override
  State<StatefulWidget> createState() => MyappState();
  }

class MyappState extends State<Myapp>{
  @override
  void initState() {
        Timer(Duration(seconds: 5), () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
        });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.only(top: 330,left: 50,right: 50),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("images/Simpleicons-Team-Simple-Airtable.512.png"),height: 100,width: 100,),
                Text(
                  'welcome to flutter',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),

    );
      }
}

