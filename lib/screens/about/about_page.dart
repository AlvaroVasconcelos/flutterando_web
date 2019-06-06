import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:flutterando_web/shared/model/about_model.dart';
import 'package:flutterando_web/shared/widgets/about_card/about_card.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<AboutModel> aboutModel = <AboutModel>[
    AboutModel(
        title: 'test 1',
        description: 'Testando descrinção',
        image: 'assets/icons/user.png'),
    AboutModel(
        title: 'test 1',
        description: 'Testando descrinção',
        image: 'assets/icons/user.png'),
    AboutModel(
        title: 'test 1',
        description: 'Testando descrinção',
        image: 'assets/icons/user.png'),
  ];
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
      child: LayoutBuilder(builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth < 720) {
          return Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                Text(
                  'Title',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  width: size.width * .5,
                  child: Text(
                    '''SubTitle a,sdnasdkjnaskdjnaskdjnasldadk asdas das d sadmas dasmd saldasdasd adasd sad sakdj sakjds akdjs adjas dlsakdas md sadmasdasldasjdlakwqwea lsd sads ad sa ''',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: PageController(
                      viewportFraction: 0.85,
                      initialPage: 1,
                      keepPage: true,
                    ),
                    itemCount: aboutModel.length,
                    itemBuilder: (context, index) {
                      return AboutCard(
                        title: aboutModel[index].title,
                        subTitle: aboutModel[index].description,
                        image: aboutModel[index].image,
                      );
                    },
                  ),
                ),
                SizedBox(height: 100)
              ],
            ),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Title',
                style:
                    TextStyle(color: Colors.white, fontSize: size.width * .05),
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
          );
        }
      }),
    );
  }
}
