import 'package:flutter/material.dart';
import 'package:video_call_zegocloud/screens/call_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:const Text("Home"),
       ),
      body: Container(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CallScreen(callID: '')));
          },
          child: Text("Join Call"),
        ),
      ),
    );
  }
}
