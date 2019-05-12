import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widgets/circular_icon/circular_icon_widget.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
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
              CircularIconWidget(
                assetImage: 'icons/facebook-icon.png',
              ),
              SizedBox(width: 20),
              CircularIconWidget(
                assetImage: 'icons/medium-icon.png',
              ),
              SizedBox(width: 20),
              CircularIconWidget(
                assetImage: 'icons/youtube-icon.png',
              ),
              SizedBox(width: 20),
              CircularIconWidget(
                assetImage: 'icons/linkedin-icon.png',
              ),
              SizedBox(width: 20),
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
