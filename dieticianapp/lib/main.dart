import 'package:flutter/material.dart';

import 'package:dieticianapp/logın.dart';

import 'package:dieticianapp/GirisYapSayfasi.dart';

import 'package:dieticianapp/LetsContinue.dart';

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
      theme: ThemeData(primarySwatch: Colors.pink),
      home: LoginPage(),
    );
  }
}
