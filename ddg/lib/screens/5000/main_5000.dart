import 'package:flutter/material.dart';

class Cinqmilles extends StatelessWidget {
  const Cinqmilles({
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
              "Bienvenue au jeu 5000",
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
