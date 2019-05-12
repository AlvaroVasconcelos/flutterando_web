import 'package:flutter_web/material.dart';

class GradientAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String image;
  final TabBar buttons;
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
        Positioned.fill(
          left: width * .6,
          right: width * .05,
          child: widget.buttons,
        )
      ],
    );
  }
}
