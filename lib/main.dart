import 'package:flutter/material.dart';
import 'package:video_call_zegocloud/screens/home_screen.dart';
import 'package:video_call_zegocloud/screens/login_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        'login':(context)=>const LoginScreen(),
        'home':(context)=>const HomeScreen(),

      },
      initialRoute: "login",
    );
  }
}
