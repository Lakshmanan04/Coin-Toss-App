import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  var image = 'assets/images/fc1.jpeg';
  String text = 'Heads!!!';

  void flipCoin() {
    setState(() {
      var c = random.nextInt(2) + 1;
      if (c == 2) {
        text = 'Tails!!!';
      } else {
        text = 'Heads!!!';
      }
      image = 'assets/images/fc$c.jpeg';
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(121, 4, 82, 179),
              Color.fromARGB(255, 8, 159, 197),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom:30.0),
                child: Text(
                  "Coin Toss",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 169, 122, 3),
                  ),
                ),
              ),
              Image.asset(image),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 169, 122, 3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: flipCoin,
                  child: const Text('Toss coin'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
