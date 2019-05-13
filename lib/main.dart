import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:flutterando_web/screens/StartPage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando',
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}
