import 'package:flutter_web/material.dart';

class CircularIconWidget extends StatelessWidget {
  final String assetImage;

  const CircularIconWidget({Key key, this.assetImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipOval(
      child: Container(
        height: size.height * 0.05,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(assetImage, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
