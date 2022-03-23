import 'package:ddg/classes.dart';
import 'package:ddg/screens/home/components/card.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class CardGames extends StatefulWidget {
  const CardGames({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<CardGames> {
  @override
  void initState() {
    readJson();
    super.initState();
  }

  List _games = [];

  Future<void> readJson() async {
    // fill _games using getGames and setState
  }

  @override
  Widget build(BuildContext context) {
    return (_games.isNotEmpty
    ? 
    // Make Grid.builder using CartTemplate.
        : const CircularProgressIndicator()
      );
  }
}
