import 'package:flutter_web/material.dart';
import 'package:flutterando_web/screens/start/components/tabbar/tabbar_component.dart';

class GradientAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String image;
  final Widget buttons;
  GradientAppBar({Key key, this.image, this.buttons}) : super(key: key);
  _GradientAppBarState createState() => _GradientAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(56);
}

class _GradientAppBarState extends State<GradientAppBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(95, 95, 95, 1),
              Color.fromRGBO(0, 85, 155, 1),
              Color.fromRGBO(85, 200, 245, 1),
            ]),
          ),
        ),
        Positioned.fill(
          right: width * 0.60,
          child: Image.asset(widget.image),
        ),
        Positioned(
          right: width * 0.15,
          child: Container(
            height: 56,
            child: widget.buttons,
          ),
        ),
      ],
    );
  }
}
