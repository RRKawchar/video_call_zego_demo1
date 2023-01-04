import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String name="";
  static String userId="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Login",style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
             onChanged: (val){
               name=val;
             },
              decoration:const InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder()
              ),
            ),
           const SizedBox(height: 10),
            TextField(
             onChanged: (val){
               userId=val;
             },
              decoration:const InputDecoration(
                  hintText: "User Id",
                  border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "home");
            }, child:const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
