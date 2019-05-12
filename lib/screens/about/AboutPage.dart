import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widgets/about_card/about_card.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Title'),
          Text('SubTitle'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Spacer(),
              AboutCard(
                title: '',
                subTitle: '',
                image: 'icons/users.png',
              ),
              AboutCard(
                title: '',
                subTitle: '',
                image: 'icons/users.png',
              ),
              AboutCard(
                title: '',
                subTitle: '',
                image: 'icons/users.png',
              ),
              AboutCard(
                title: '',
                subTitle: '',
                image: 'icons/users.png',
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
