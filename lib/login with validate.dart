import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: login_with_validate(),
  debugShowCheckedModeBanner: false,));
}
class login_with_validate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Loginvalidatestate();

}

class Loginvalidatestate extends State<login_with_validate>{
  GlobalKey<FormState> formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login with validate'),),

      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 50,),

                Text('login page',style: TextStyle(fontSize: 40,color: Colors.red),),
                Padding(
                  padding: const EdgeInsets.only(top: 50,right: 60,left: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'username',
                      hintText: 'username',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 60,right: 60,bottom: 60),
                  child: TextFormField(
                    obscuringCharacter: '*',
                    obscureText: showpass,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if(showpass){
                            showpass=false;
                          }
                          else {
                            showpass = true;
                          }
                        });
                      }, icon: Icon(showpass ==true ? Icons.visibility_off :Icons.visibility),),
                      labelText: 'password',
                      hintText: 'password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){}, child: Text('login'),style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),),
                SizedBox(height: 20,),
                TextButton(onPressed: (){}, child: Text('create a new user'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}