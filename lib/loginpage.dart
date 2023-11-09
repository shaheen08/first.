import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN00MFuHHDWUpKfQ4n5RTGeeF51dlUp4bzKA&usqp=CAU"),fit: BoxFit.fill)
          //     gradient: LinearGradient(colors: [
          //   Colors.red,
          //   Colors.green,
          //   Colors.yellow,
          // ])
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage(
                    'images/Simpleicons-Team-Simple-Airtable.512.png',
                  ),
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: TextField(
                    obscureText: showpass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'create a new user',
                      selectionColor: Colors.lightGreen,
                      style: GoogleFonts.b612Mono(
                          fontSize: 20,
                          color: Colors.yellow,
                          fontWeight: FontWeight.w400,
                          textStyle: Theme.of(context).textTheme.titleMedium),
                    )),
              ],
            ),
          ),
        ));
  }
}
