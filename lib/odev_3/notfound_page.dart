import 'package:flutter/material.dart';
import 'package:nsezgin_odevler/theme/constant_colors.dart';

class NotfoundPage extends StatefulWidget {
  const NotfoundPage({super.key});

  @override
  State<NotfoundPage> createState() => _NotfoundPageState();
}

class _NotfoundPageState extends State<NotfoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Not Found'),
        backgroundColor: ConstantColors.mainBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Image.asset('assets/images/404_notfound.jpg')),
            Center(
              child: Text(
                '404 Not Found',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Text(
              "The page you are looking for seems to be missing. Please go back or visit the homepage.",
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
