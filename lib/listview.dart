import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Homepage(),));
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),),
      body: ListView(
        children: [
          Card(color: Colors.lime,
            child: ListTile(
              leading:CircleAvatar(backgroundImage:AssetImage("images/ww.png"),),
              title: Text("shaf"),
              subtitle: Text("7510366069"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.cyan,
            child: ListTile(
              leading:CircleAvatar(backgroundImage:AssetImage("images/ww.png"),),
              title: Text("kaju"),
              subtitle: Text("1234567890"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.pink,
            child: ListTile(
              leading:CircleAvatar(backgroundImage:AssetImage("images/ww.png"),),
              title: Text("nishma"),
              subtitle: Text("9876543210"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.blue,
            child: ListTile(
              leading:CircleAvatar(backgroundImage:AssetImage("images/ww.png"),),
              title: Text("mani"),
              subtitle: Text("567943210"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}