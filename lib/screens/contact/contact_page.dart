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
      padding: const EdgeInsets.all(15),
      margin: EdgeInsets.only(top: size.width * 0.075),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Row(
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
          ),
          Expanded(flex: 2, child: BottomBar())
        ],
      ),
    );
  }
}
