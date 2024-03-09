// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _scrollController.animateTo(0.0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
      } else {
        _scrollController.animateTo(
            _scrollController.position.pixels +
                MediaQuery.of(context).size.width -
                50,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 77, 129, 172),
                Color.fromARGB(255, 216, 85, 45),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: MediaQuery.of(context).size.width - 50,
                            height: 250,
                            // color: const Color.fromARGB(255, 134, 208, 221),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 41, 41),
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              //add an image with a border radius
                              image: const DecorationImage(
                                image: AssetImage('images/flower.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child:
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            height: 250,
                            // color: const Color.fromARGB(255, 134, 208, 221),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 41, 41),
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              //add an image with a border radius
                              image: const DecorationImage(
                                image: AssetImage('images/flower.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child:
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            height: 250,
                            // color: const Color.fromARGB(255, 134, 208, 221),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 41, 41),
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              //add an image with a border radius
                              image: const DecorationImage(
                                image: AssetImage('images/flower.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child:
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            height: 250,
                            // color: const Color.fromARGB(255, 134, 208, 221),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 44, 41, 41),
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              //add an image with a border radius
                              image: const DecorationImage(
                                image: AssetImage('images/flower.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            // child:
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
