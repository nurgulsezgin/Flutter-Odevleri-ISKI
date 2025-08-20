import 'package:flutter/material.dart';
import 'package:nsezgin_odevler/odev_3/odev_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ÖDEVLER',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const Odev3(),
    );
  }
}
