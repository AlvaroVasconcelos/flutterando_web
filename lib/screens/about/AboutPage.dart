import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widgets/about_card/about_card.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage('images/shap.png'),
        ),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(95, 95, 95, 1),
          Color.fromRGBO(0, 85, 155, 1),
          Color.fromRGBO(85, 200, 245, 1),
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Title',
            style: TextStyle(color: Colors.white, fontSize: size.width * .05),
          ),
          Container(
            width: size.width * .3,
            child: Text(
              '''SubTitle a,sdnasdkjnaskdjnaskdjnasldadk asdas das d sadmas dasmd saldasdasd adasd sad sakdj sakjds akdjs adjas dlsakdas md sadmasdasldasjdlakwqwea lsd sads ad sa ''',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * .01,
              ),
            ),
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
