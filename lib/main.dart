import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'screens/start/start_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(title: 'Flutter Demo Home Page'),
    );
  }
}
