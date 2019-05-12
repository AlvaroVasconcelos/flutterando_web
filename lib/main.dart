import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import 'shared/widget/Gradient_AppBar.dart';
import 'shared/widget/Link_Button.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterando',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        image: 'images/logo.png',
        buttons: [
          LinkButton(
            label: 'Home',
            onTap: () {},
          ),
          LinkButton(
            label: 'Sobre',
            onTap: () {},
          ),
          LinkButton(
            label: 'Equipe',
            onTap: () {},
          ),
          LinkButton(
            label: 'Contato',
            onTap: () {},
          ),
          Spacer()
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello, World!'),
          ],
        ),
      ),
    );
  }
}
