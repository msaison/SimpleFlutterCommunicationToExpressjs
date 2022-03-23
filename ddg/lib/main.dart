import 'package:ddg/screens/games/421/main_421.dart';
import 'package:ddg/screens/games/5000/main_5000.dart';
import 'package:ddg/screens/games/trente-six/main_trente-six.dart';
import 'package:ddg/screens/games/yams/main_yams.dart';
import 'package:ddg/screens/games/zanzibar/main_zanzibar.dart';
import 'package:flutter/material.dart';
import 'package:ddg/screens/home/main_home.dart';
import 'package:flutter/services.dart';

// main() => runApp(const MainApp());

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dices Drunk Games',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/Yams': (context) => const Yams(),
        '/Zanzibar': (context) => const Zanzibar(),
        '/Trente-six': (context) => const Trentesix(),
        '/421': (context) => const Quatrevingtetun(),
        '/5000': (context) => const Cinqmilles(),
      },
    );
  }
}
