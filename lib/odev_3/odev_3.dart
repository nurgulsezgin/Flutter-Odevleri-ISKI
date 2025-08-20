import 'package:flutter/material.dart';
import 'package:nsezgin_odevler/odev_3/notfound_page.dart';

void main() {
  runApp(const Odev3());
}

class Odev3 extends StatelessWidget {
  const Odev3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NotfoundPage(),
    );
  }
}
