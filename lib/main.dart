import 'package:flutter/material.dart';
import 'package:flutter_projet/login.dart';
import 'package:flutter_projet/register.dart';
import 'package:flutter_projet/welcome.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: "/" ,
      routes: {
        "/" : (context) => const Welcome(),
        "/login" : (context) => const Login(),
        "/register" : (context) => const Register(),
      },
    );
  }
}