import 'package:flutter_web/material.dart';

class AboutCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const AboutCard({
    Key key,
    this.title,
    this.subTitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            maxRadius: 100,
            minRadius: 1,
            child: Image.asset(image),
          ),
          Text(title, style: Theme.of(context).textTheme.title),
          Text(subTitle),
        ],
      ),
    ));
  }
}
