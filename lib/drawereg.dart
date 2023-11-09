import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawereg(),));
}
class drawereg extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('drawereg'),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/ozil.webp'),fit: BoxFit.fill)),
              accountName: Text('shaheen'),
                accountEmail: Text('shaheen@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('images/ozil.webp')),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage('images/kroos.webp'),),
              CircleAvatar(backgroundImage: AssetImage('images/kimmich.jpg'),)
            ],),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.design_services),
              title: Text('Services'),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('About'),
            ), Divider(thickness: 1,color: Colors.red,),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),





          ],

        ),
      ),
    );
  }
}
