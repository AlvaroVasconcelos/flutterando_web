import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widgets/animated_text_kit/lib/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          image: AssetImage('images/shape-bg.png'),
        ),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(95, 95, 95, 1),
          Color.fromRGBO(0, 85, 155, 1),
          Color.fromRGBO(85, 200, 245, 1),
        ], begin: Alignment.topLeft),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Title: ',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    RotateAnimatedTextKit(
                      isRepeatingAnimation: false,
                      text: ['Esse', 'é', 'o', 'Title'],
                      textStyle: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ],
                ),
                TyperAnimatedTextKit(
                  isRepeatingAnimation: false,
                  duration: Duration(seconds: 3),
                  text: [
                    'Esse é o subtitle, testando tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho tamanho. '
                  ],
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: size.width * 0.2,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/logo-color.png',
                        fit: BoxFit.contain,
                        width: size.width * 0.1,
                      ),
                      Image.asset(
                        'images/iphone-x-frame.png',
                        fit: BoxFit.contain,
                        width: size.width * 0.2,
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
