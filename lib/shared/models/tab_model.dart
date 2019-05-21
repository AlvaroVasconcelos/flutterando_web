import 'package:flutter_web/material.dart';

class TabModel{
  String title;
  Widget Function(BuildContext context) contentBuilder;

  TabModel({this.title, this.contentBuilder});
}