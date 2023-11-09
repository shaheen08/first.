import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewectnd(),));
}
// ignore: must_be_immutable
class GridViewectnd extends StatelessWidget{
  var images=['images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png','images/Simpleicons-Team-Simple-Airtable.512.png',];
  var name=['arun','balu','arun','balu','arun','balu','arun','balu','arun','balu','arun','balu',];
  var rate=['2','3','4','5','6','4','3','8','5','balu','arun','balu',];

  GridViewectnd({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,crossAxisSpacing: 20,mainAxisSpacing: 20),
        children: List.generate(10, (index){
          return Card(
            child: Column(
              children: [
                Image(image: AssetImage(images[index]),),
                Row(
                  children: [
                    Text(name[index]),
                    const SizedBox(width: 100,),
                    Text(rate[index])
                  ],
                )
              ],
            ),
          );
        }
        ),
      ),
    );
  }
}