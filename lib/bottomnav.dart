import 'package:first/loginpage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottomnav(),));
}

class bottomnav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>bottomnavstate();
  }
class bottomnavstate extends State<bottomnav>{
  var screen=[
    Loginpage(),
    Loginpage(),
    Loginpage(),
    Loginpage(),
  ];
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.limeAccent,
        unselectedItemColor: Colors.red,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite',backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Account',backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.logout),label: 'Logout',backgroundColor: Colors.green),

      ],),
    );

  }

}
