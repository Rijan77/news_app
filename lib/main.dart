import 'package:application_1/Pages/Dashbaord.dart';
import 'package:flutter/material.dart';

import 'Pages/login_page.dart';
import 'Pages/loginpage_2.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home:   Loginpage2()
    );
  }
}
