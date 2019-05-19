import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'screens/start_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando',
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.blue,
        accentColor: Color(0xFF54C7F4),
      ),
      home: StartPage(),
    );
  }
}
