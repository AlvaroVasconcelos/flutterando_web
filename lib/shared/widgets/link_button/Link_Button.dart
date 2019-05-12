import 'package:flutter_web/material.dart';

class LinkButton extends StatefulWidget {
  final String label;
  final Function onTap;

  LinkButton({Key key, this.label, this.onTap}) : super(key: key);

  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(widget.label, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
