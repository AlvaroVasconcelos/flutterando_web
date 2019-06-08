import 'package:animated_card/animated_card.dart';
import 'package:flutter_web/material.dart';
import 'components/bottom_bar.dart';
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
      margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 0),
      child: LayoutBuilder(builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth < 720) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 10),
              Expanded(
                flex: 15,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  initDelay: Duration(seconds: 0),
                  child: ContactForm(),
                ),
              ),
              Expanded(
                flex: 4,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.bottom,
                  initDelay: Duration(seconds: 0),
                  child: BottomBar(),
                ),
              ),
              SizedBox(height: 1),
            ],
          );
        } else {
          return Column(
            children: <Widget>[
              SizedBox(height: 5),
              Expanded(
                flex: 15,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  initDelay: Duration(seconds: 0),
                  child: ContactForm(),
                ),
              ),
              Expanded(
                flex: 5,
                child: AnimatedCard(
                  direction: AnimatedCardDirection.bottom,
                  initDelay: Duration(seconds: 0),
                  child: BottomBar(),
                ),
              ),
              SizedBox(height: 5),
            ],
          );
        }
      }),
    );
  }
}
