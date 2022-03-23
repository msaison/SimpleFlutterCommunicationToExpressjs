import 'package:flutter/material.dart';

class Quatrevingtetun extends StatefulWidget {
  const Quatrevingtetun({Key? key}) : super(key: key);

  @override
  _Quatrevingtetun createState() => _Quatrevingtetun();
}

class _Quatrevingtetun extends State<Quatrevingtetun> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const Text(
              'Selectionne le nombre de joueurs:',
              style: TextStyle(
                  color: Colors.black87, fontSize: 30, fontFamily: "Jost"),
              textAlign: TextAlign.center,
            ),
            Text('$_counter',
                style: TextStyle(
                    color: Colors.orange.shade300,
                    fontSize: 30,
                    fontFamily: "Jost")),
            ButtonBar (
              alignment: MainAxisAlignment.center,
              children: <Widget>[
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.remove),
              ),
            ],
            ),
            const SizedBox(height: 40,),
            button(),
          ])),
    );
  }

  Widget button() {
    if (_counter >= 2) {
      return (
        OutlinedButton(
          child: const Text('CLIQUE POUR COMMENCER LA PARTIE'),
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.orange,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          onPressed: () {},
        )
      );
    } else {
      return (const Text("Il vous être au minimum 2 joueurs!"));
    }
  }
}
