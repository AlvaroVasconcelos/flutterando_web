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
          Text(
            'Title',
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            'SubTitle',
            style: Theme.of(context).textTheme.overline,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Spacer(flex: 2),
              AboutCard(
                title: 'Testando Title',
                subTitle:
                    'ALSKMD ALKSMDALK SDMALS DMAL SKD MAS LKDMA L SDKMA SLKD MASLKDMASL KDMASLKDMAL SDMALSKD MALSDM AS LDMASLKDMASLKDMAS LDKMSALDKAM SLD KASMD',
                image: 'icons/users.png',
              ),
              Spacer(flex: 1),
              AboutCard(
                title: 'Testando Title',
                subTitle:
                    'ALSKMD ALKSMDALK SDMALS DMAL SKD MAS LKDMA L SDKMA SLKD MASLKDMASL KDMASLKDMAL SDMALSKD MALSDM AS LDMASLKDMASLKDMAS LDKMSALDKAM SLD KASMD',
                image: 'icons/users.png',
              ),
              Spacer(flex: 1),
              AboutCard(
                title: 'Testando Title',
                subTitle:
                    'ALSKMD ALKSMDALK SDMALS DMAL SKD MAS LKDMA L SDKMA SLKD MASLKDMASL KDMASLKDMAL SDMALSKD MALSDM AS LDMASLKDMASLKDMAS LDKMSALDKAM SLD KASMD',
                image: 'icons/users.png',
              ),
              Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
