import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widgets/circular_icon/circular_icon_widget.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);

  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              color: Colors.black,
              assetImage: 'social/facebook_f.png',
            ),
            SizedBox(width: 20),
            CircularIconWidget(
              color: Colors.black,
              assetImage: 'social/medium_m.png',
            ),
            SizedBox(width: 20),
            CircularIconWidget(
              color: Colors.black,
              assetImage: 'social/youtube_y.png',
            ),
            SizedBox(width: 20),
            CircularIconWidget(
              color: Colors.black,
              assetImage: 'social/linkedin_in.png',
            ),
            SizedBox(width: 20),
            Spacer(),
          ],
        ),
        SizedBox(height: 5),
        Text(
          '© copyright Flutterando',
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }
}
