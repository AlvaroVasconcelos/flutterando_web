import 'dart:svg';

import 'package:flutter_web/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/logo-color.png',
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Spacer(),
              ClipOval(
                child: Container(
                  child: Image.asset(
                    'icons/facebook-icon.png',
                    fit: BoxFit.contain,
                  ),
                  color: Colors.white,
                  height: height * 0.05,
                  width: width * 0.03,
                ),
              ),
              SizedBox(width: 20),
              ClipOval(
                child: Container(
                  child: Image.asset(
                    'icons/linkedin-icon.png',
                    fit: BoxFit.contain,
                  ),
                  color: Colors.white,
                  height: height * 0.05,
                  width: width * 0.03,
                ),
              ),
              SizedBox(width: 20),
              ClipOval(
                child: Container(
                  child: Image.asset(
                    'icons/medium-icon.png',
                    fit: BoxFit.contain,
                  ),
                  color: Colors.white,
                  height: height * 0.05,
                  width: width * 0.03,
                ),
              ),
              SizedBox(width: 20),
              ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('icons/youtube-icon.png'),
                    ),
                  ),
                  height: height * 0.05,
                  width: width * 0.03,
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 5),
          Text('© copyright Flutterando')
        ],
      ),
    );
  }
}
