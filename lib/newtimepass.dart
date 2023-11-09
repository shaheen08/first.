import 'package:aug_project/home%20page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home:tabb(),
  )));
}
class tabb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("WHATSAPP"),
        backgroundColor: Colors.lightGreen,
        actions: [
          Padding(padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.search),),
          Padding(padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.camera_alt),),
          PopupMenuButton(itemBuilder: (context ){
            return[
              PopupMenuItem(child: Text("setting")),
              PopupMenuItem(child: Text("help")),
              PopupMenuItem(child: Text("invite")),
            ];
          }
          )],
        bottom: TabBar( labelColor: Colors.red,
          tabs: [
            Tab(child: Icon(Icons.people_alt),),
            Tab(child:Text("chat"),),
            Tab(child: Text("status"),),
            Tab(child: Text("call"),),
          ],),
      ),
      body: TabBarView(children: [
        Homepage(),
        Text("contact"),
        Text("data"),
        Text("status")
      ],

      ),
    ),
    );
  }

}