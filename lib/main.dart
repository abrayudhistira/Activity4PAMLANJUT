import 'package:flutter/material.dart';
import 'package:parsingdata/presentation/RegisterPage.dart';
import 'package:parsingdata/presentation/homePage.dart';
import 'package:parsingdata/presentation/login.dart';
import 'package:parsingdata/presentation/orderPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const Login(),
        '/register': (context) => const RegisterPage(),
        '/order': (context) => const OrderPage(),
      },
    );
  }
}

