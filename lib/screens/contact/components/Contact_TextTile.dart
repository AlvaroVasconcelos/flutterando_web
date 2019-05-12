
import 'package:flutter_web/material.dart';

class ContactTextTile extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;
  const ContactTextTile(
      {Key key,
      this.title,
      this.subtitle,
      this.color,
      this.margin,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      color: color ?? Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: padding ?? const EdgeInsets.only(bottom: 25),
            child: title,
          ),
          subtitle,
        ],
      ),
    );
  }
}
