import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: resort(),)));
}
class resort extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.teal,
          leading: Icon(Icons.menu),
          floating: true,pinned: true,
          expandedHeight: 200,
          //  flexibleSpace:Container(color: Colors.black,),
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 10),
            child: Text("Type your location",style: TextStyle(fontSize: 28,color: Colors.white),),
          ),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.teal, // Background color
          child: Padding(
            padding: const EdgeInsets.only(top: 170), // Adjust the top padding here
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search location",
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
        ),),
    ),),),),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BoxButton(color: Colors.red,
                    text: "Resort",
                    icon: Icons.villa,),
                  BoxButton(color: Colors.green,text: "Hotel",
                    icon: Icons.hotel,),
                  BoxButton(color: Colors.yellow,text: "Restaurent",
                    icon: Icons.restaurant,),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
            SliverList(
            delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
    return HotelImageCard(); // Create and return a HotelImageCard widget
    },
    childCount: 10,),),

      ],));
    }

  }
class BoxButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;

  BoxButton({required this.color,required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),

        ],
      ),

      // You can customize the color and content of the button.
    );
  }
}
class HotelImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final assetImage = Image.asset('images/hotel3.jpeg');
    // Replace this with your code to create a card with a hotel image
    return Card(
      child: Column(
        children: [
          assetImage,
        ListTile(
        title: Text('Hotel Name'),
        subtitle: Text('Description of the hotel'),
      ),
      ],
    ),
    );
  }
}