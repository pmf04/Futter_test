import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

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
        child: const Text("Hello, Myster PMF"),
      ),
      // bottomNavigationBar: ,
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFCard(
        boxFit: BoxFit.cover,
        image: Image.asset('images/flower.jpg'),
        title: const GFListTile(
          avatar: GFAvatar(
            backgroundImage: AssetImage('images/flower.jpg'),
          ),
          title: Text('Myster PMF'),
          subTitle: Text('Adventure lover'),
        ),
        content:
            const Text("Myster PMF is a developer, programmer. He likes cats."),
        buttonBar: GFButtonBar(
          children: <Widget>[
            GFButton(
              onPressed: () {},
              text: 'View Profile',
            ),
            GFButton(
              onPressed: () {},
              text: 'Go back',
            ),
          ],
        ));
  }
}
