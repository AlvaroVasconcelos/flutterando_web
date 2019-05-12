import 'package:flutter_web/material.dart';
import 'components/Contact_Container.dart';
import 'components/Contat_Form.dart';

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
      child: Row(
        children: <Widget>[
          Spacer(flex: 1),
          Expanded(flex: 3, child: ContactContainer()),
          Spacer(
            flex: 1,
          ),
          Expanded(flex: 6, child: ContactForm()),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
