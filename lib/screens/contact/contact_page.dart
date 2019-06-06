import 'package:animated_card/animated_card.dart';
import 'package:flutter_web/material.dart';
import 'components/bottom_bar.dart';
import 'components/contact_container.dart';
import 'components/contact_form.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      child: LayoutBuilder(builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth >= 720) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(flex: 1),
                  Expanded(
                    flex: 3,
                    child: AnimatedCard(
                      direction: AnimatedCardDirection.left,
                      initDelay: Duration(seconds: 0),
                      child: ContactContainer(),
                    ),
                  ),
                  Spacer(flex: 1),
                  Expanded(
                    flex: 6,
                    child: AnimatedCard(
                      direction: AnimatedCardDirection.right,
                      initDelay: Duration(seconds: 0),
                      child: ContactForm(),
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
              Positioned(
                bottom: 5,
                width: 250,
                child: BottomBar(),
              )
            ],
          );
        } else {
          return Column(
            children: <Widget>[
              SizedBox(height: 10),
              Expanded(
                flex: 9,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.left,
                  initDelay: Duration(seconds: 0),
                  child: ContactContainer(),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 12,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  initDelay: Duration(seconds: 0),
                  child: ContactForm(),
                ),
              ),
              Expanded(
                flex: 7,
                child: BottomBar(),
              )
            ],
          );
        }
      }),
    );
  }
}
