import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Slivers(),
      )));
}

class Slivers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 150,
            flexibleSpace: Container(child: Text("Ms"),color: Colors.amber,),
            title: Text("My Application"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),

            ],
            bottom: AppBar(
              title: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(hintText: "Search somthing",
                      suffixIcon: Icon(Icons.search)),

                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
              [
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Mishab"),
                  subtitle: Text("9562120334"),

                ),
              ]
          ))
        ],
      ),
    );
  }

}