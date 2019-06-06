import 'package:flutter_web/material.dart';

class CircularIconWidget extends StatelessWidget {
  final String assetImage;
  final Color color;

  const CircularIconWidget({
    Key key,
    @required this.assetImage,
    @required this.color,
  })  : assert(assetImage != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, boxConstraints) {
      if (boxConstraints.maxWidth >= 720) {
        return ClipOval(
          child: Container(
            height: size.height * 0.05,
            decoration: BoxDecoration(
              color: color,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ],
              ),
            ),
            padding: EdgeInsets.all(10),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(assetImage, fit: BoxFit.cover),
            ),
          ),
        );
      } else {
        return ClipOval(
          child: Container(
            height: size.height * 0.03,
            decoration: BoxDecoration(
              color: color,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ],
              ),
            ),
            padding: EdgeInsets.all(10),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(assetImage, fit: BoxFit.cover),
            ),
          ),
        );
      }
    });
  }
}
