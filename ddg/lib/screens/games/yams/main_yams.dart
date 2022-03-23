import 'package:flutter/material.dart';

class Yams extends StatelessWidget {
  const Yams({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: const <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              "Bienvenue au jeu Yams",
              style: TextStyle( fontFamily: "Jost", fontSize: 35, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
