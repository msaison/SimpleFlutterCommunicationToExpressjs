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
    final data = await Api().getGames("Martin");
    setState(() {
      _games = data.data["games"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_games.isNotEmpty
        ? GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            padding: const EdgeInsets.all(8),
            itemCount: _games.length,
            itemBuilder: (BuildContext context, int index) {
              return CardTemplate(
                  title: _games[index]["name"],
                  desc: _games[index]["desc"],
                  linkavatar: _games[index]["img_src"]);
            },
          )
        : const Text(""));
  }
}
