import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ConvexBottomBar(),));
}
class ConvexBottomBar extends StatelessWidget{
  const ConvexBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Convex Bottom Bar'),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const[
          TabItem
        ]
      ),
    );
  }
  
}