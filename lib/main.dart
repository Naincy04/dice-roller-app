import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var activeImage = 'assets/images/dice-1.png';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade700,
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 84, 153, 221),
              Color.fromARGB(255, 4, 55, 97)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                children: [
                  Center(
                      child: Image.asset(activeImage, height: 150, width: 150)),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      var random = Random().nextInt(6) + 1;
                      setState(() {
                        activeImage = 'assets/images/dice-$random.png';
                      });
                      print(random);
                    },
                    child: Container(
                      height: 35,
                      width: 170,
                      margin: EdgeInsets.symmetric(horizontal: 120),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Roll Dice',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
