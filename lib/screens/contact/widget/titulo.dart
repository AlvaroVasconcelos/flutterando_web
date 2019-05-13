import 'package:flutter_web/material.dart';

class TituloWidget extends StatelessWidget {
  final String texto; 

  TituloWidget({this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: 55, color: Colors.grey),
      textAlign: TextAlign.center,
    );
  }
}
