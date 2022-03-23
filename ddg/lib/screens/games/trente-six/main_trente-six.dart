// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Trentesix extends StatelessWidget {
  const Trentesix({
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
              "Bienvenue au jeu 36",
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
