import 'package:flutter_web/material.dart';

class ContactField extends StatelessWidget {
  final String hint;
  final TextStyle hintStyle;
  final double height;
  final Function onSaved;
  final bool verticalCenter;

  const ContactField(
      {Key key,
      this.hint,
      this.hintStyle,
      this.height,
      this.onSaved,
      this.verticalCenter = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: height ?? 40,
      color: Colors.grey[100],
      child: verticalCenter
          ? Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: TextFormField(
                  
                  maxLines: null,
                  onSaved: onSaved,
                  textAlign: TextAlign.start,
                  style: TextStyle(),
                  decoration: InputDecoration.collapsed(
                    
                    hintText: hint ?? "",
                    hintStyle: hintStyle ?? TextStyle(),
                  ),
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 8,top:10),
              child: TextFormField(
                maxLines: null,
                onSaved: onSaved,
                textAlign: TextAlign.start,
                style: TextStyle(),
                decoration: InputDecoration.collapsed(
                  hintText: hint ?? "",
                  hintStyle: hintStyle ?? TextStyle(),
                ),
              ),
            ),
    );
  }
}
