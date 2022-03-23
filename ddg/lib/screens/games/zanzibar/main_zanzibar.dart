import 'package:flutter/material.dart';

class Zanzibar extends StatelessWidget {
  const Zanzibar({
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
              "Bienvenue sur le Jeu Zanzibar",
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
