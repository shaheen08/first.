import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Chat(),
      )));
}


class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int _currentIndex = 0;

  get images => null;
  @override
  Widget build(BuildContext context) {
    var kimmich;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            pinned: true,
            expandedHeight: 120,
            flexibleSpace: Container(
              child: Row(
                children: [
                  Text(
                    "10:30 AM",
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(Icons.signal_wifi_4_bar),
                  Icon(Icons.battery_full),
                ],
              ),
            ),
            title: Text("Conversation", style: TextStyle(color: Colors.black, fontSize: 30, // Adjust the font size as needed
              fontWeight: FontWeight.bold, )),
            actions: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2), // Adjust padding as needed
                decoration: BoxDecoration(
                  color: Colors.pink[100], // Set the background color of the box
                  borderRadius: BorderRadius.circular(8), // Add rounded corners
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add,
                      size: 15,
                      color: Colors.pink,) // Icon color
                    ),
                    Text(
                      'Add New',
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:12 ),
                    ),
                  ],
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
                child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16), // Add margin to create space
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/kimmich.jpg'),
                ),
                title: Text("Kimmich"),
                subtitle: Text("9562120334"),

              ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("kroos"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("ozil"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("khabib"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("phelps"),
                  subtitle: Text("9562120334"),

                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("lebron"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("putin"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("kohli"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("bale"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("evans"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("lahm"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("federer"),
                  subtitle: Text("9562120334"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("leo"),
                  subtitle: Text("9562120334"),
                ), ListTile(
                leading: Icon(Icons.account_box),
                title: Text("rono"),
                subtitle: Text("9562120334"),
              ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("neymar"),
                  subtitle: Text("9562120334"),
                ), ListTile(
                leading: Icon(Icons.account_box),
                title: Text("nadal"),
                subtitle: Text("9562120334"),
              ), ListTile(
                leading: Icon(Icons.account_box),
                title: Text("carlson"),
                subtitle: Text("9562120334"),
              ), ListTile(
                leading: Icon(Icons.account_box),
                title: Text("tonali"),
                subtitle: Text("9562120334"),
              ), ListTile(
                leading: Icon(Icons.account_box),
                title: Text("casemiro"),
                subtitle: Text("9562120334"),
              ), ListTile(
                leading: Icon(Icons.account_box),
                title: Text("tate"),
                subtitle: Text("9562120334"),
              ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("salah"),
                  subtitle: Text("9562120334"),
                ),


                // Your list items here
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}


