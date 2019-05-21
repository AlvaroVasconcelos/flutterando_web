import 'package:flutter_web/material.dart';

class ScrollThumb extends StatelessWidget {
  final double height;
  final String customText;

  const ScrollThumb({Key key, this.height, this.customText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          customText,
          style: TextStyle(color: Colors.white.withOpacity(0.8)),
        ),
        SizedBox(width: 5),
        Container(
          height: height,
          width: 10.0,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            border: Border.all(color: Colors.white, width: 1),
          ),
        ),
      ],
    );
  }
}
