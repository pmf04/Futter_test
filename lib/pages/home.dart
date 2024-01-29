import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Myster PMF",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 184, 47, 13),
            fontWeight: FontWeight.bold,
            //blue background
            backgroundColor: Color.fromARGB(255, 0, 0, 255),
          ),
        ), 
      ),
      body: Container(
        height: 400,
        width: double.infinity,
        color: Colors.cyan,
        child: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 184, 47, 13),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
