import 'package:flutter_web/material.dart';

class GradientAppBar extends StatefulWidget implements PreferredSizeWidget {
  GradientAppBar({Key key}) : super(key: key);
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
          child: Image.asset('images/logo.png'),
        ),
        Positioned.fill(
          left: width * 0.60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: Text('Home'),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Sobre'),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Equipe'),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Home'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
