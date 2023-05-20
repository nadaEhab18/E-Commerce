import 'package:flutter/material.dart';
import 'package:register_page/features/screens/home_screen.dart';
import 'package:register_page/features/screens/login_screen.dart';
import 'package:register_page/features/screens/register_screen.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      LoginScreen(),
     //RegisterScreen(),
       // HomeScreen(),
    );
  }
}

