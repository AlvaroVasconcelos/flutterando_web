
import 'package:flutter_web/material.dart';

class ContactTile extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final Color color;
  const ContactTile({Key key, this.icon, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.white,
      height: 35,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[icon, text],
      ),
    );
  }
}
