import 'package:flutter_web/material.dart';
import 'package:flutterando_web/contact/ContactPage.dart';
import 'package:flutterando_web/faq/FaqPage.dart';
import 'package:flutterando_web/shared/widget/Gradient_AppBar.dart';
import 'package:flutterando_web/shared/widget/Link_Button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    PageController _pageController;


  @override
  void initState() {
   _pageController = new PageController(initialPage:0);
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
              Expanded(
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  ContactPage(),
                  FaqPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
