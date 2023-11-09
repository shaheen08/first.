import 'package:flutter/material.dart';
voidmain(){
  runApp(MaterialApp(home: GridViewcustm(),));
}
class GridViewcustm extends StatelessWidget {
  var images=['images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png',];
  var name=['arun','balu','arun','balu','arun','balu','arun','balu','arun','balu','arun','balu',];
  var rate=['2','3','4','5','6','4','3','8','5','balu','arun','balu',];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount: 2),
  childrenDelegate: SliverChildBuilderDelegate((context, index) {
   return Card(
     child: ListTile(
       leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
       trailing: Icon(Icons.shopping_cart),
       title: ,

     ),
   );
  })),
  );
  }
}
