import 'package:flutter/material.dart';
import 'package:ddg/screens/home/components/games_card.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Bienvenue",
              style: TextStyle( fontFamily: "Jost", fontSize: 35, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Selectionne ton jeu.",
              style: TextStyle(
                fontFamily: "Jost",
                fontSize: 35,
                color: Colors.orange.shade300
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Expanded(child: CardGames()),
          ],
        ),
      ),
    );
  }
}
