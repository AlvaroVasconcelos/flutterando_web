import 'package:flutter_web/material.dart';

class GradientAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String image;
  final Widget buttons;
  GradientAppBar({Key key, this.image, this.buttons}) : super(key: key);
  _GradientAppBarState createState() => _GradientAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(56);
}

class _GradientAppBarState extends State<GradientAppBar> {
  Size get size => MediaQuery.of(context).size;

  bool isOpenDrawer = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth >= 720) {
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
                right: size.width * 0.60,
                child: Image.asset(widget.image),
              ),
              Positioned(
                right: size.width * 0.15,
                child: Container(
                  height: 56,
                  child: widget.buttons,
                ),
              ),
            ],
          );
        } else {
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
              if (!isOpenDrawer) ...{
                Positioned.fill(
                  child: Image.asset(
                    widget.image,
                    width: size.width * 0.08,
                  ),
                ),
              },
              Positioned(
                right: size.width * 0.2,
                child: AnimatedContainer(
                  curve: Curves.decelerate,
                  duration: Duration(seconds: 19),
                  height: 56,
                  child: isOpenDrawer ? widget.buttons : null,
                ),
              ),
              Positioned(
                left: 5,
                child: AnimatedContainer(
                  duration: Duration(seconds: 10),
                  child: drawer(),
                ),
              )
            ],
          );
        }
      },
    );
  }

  Widget drawer() {
    return IconButton(
      icon: Icon(
        isOpenDrawer ? Icons.clear : Icons.menu,
        size: size.width * 0.1,
        color: Colors.white,
      ),
      onPressed: openDrawer,
    );
  }

  openDrawer() {
    setState(() {
      isOpenDrawer = !isOpenDrawer;
    });
  }
}
