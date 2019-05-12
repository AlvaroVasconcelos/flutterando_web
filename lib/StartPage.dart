import 'package:flutter_web/material.dart';
import 'package:flutterando_web/about/AboutPage.dart';
import 'package:flutterando_web/contact/ContactPage.dart';
import 'package:flutterando_web/home/HomePage.dart';
import 'package:flutterando_web/shared/widget/Gradient_AppBar.dart';
import 'package:flutterando_web/shared/widget/Link_Button.dart';
import 'package:flutterando_web/team/TeamPage.dart';

import 'bottom/Bottom_Bar.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        image: 'images/logo.png',
        buttons: [
          LinkButton(
            label: 'Home',
            onTap: () => _pageController.animateToPage(0,
                curve: Curves.easeInOut, duration: Duration(milliseconds: 300)),
          ),
          LinkButton(
            label: 'Sobre',
            onTap: () => _pageController.animateToPage(1,
                curve: Curves.easeInOut, duration: Duration(milliseconds: 300)),
          ),
          LinkButton(
            label: 'Equipe',
            onTap: () => _pageController.animateToPage(2,
                curve: Curves.easeInOut, duration: Duration(milliseconds: 300)),
          ),
          LinkButton(
            label: 'Contato',
            onTap: () => _pageController.animateToPage(3,
                curve: Curves.easeInOut, duration: Duration(milliseconds: 300)),
          ),
          Spacer()
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _pageController,
                children: <Widget>[
                  HomePage(),
                  AboutPage(),
                  TeamPage(),
                  ContactPage(),
                  BottomBar()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
