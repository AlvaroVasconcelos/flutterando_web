import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widget/contact_field/Contact_Field.dart';

class ContactForm extends StatefulWidget {
  ContactForm({Key key}) : super(key: key);

  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Reach us quickly",
            style: TextStyle(
                fontSize: size.width * 0.018, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:8,bottom:8,right:8),
                  child: ContactField(
                    hint: "Enter name",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.013,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
           padding: const EdgeInsets.only(top:8,bottom:8),
                  child: ContactField(
                    hint: "Enter email",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.013,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
               padding: const EdgeInsets.only(top:8,bottom:8,right:8), 
                  child: ContactField(
                    hint: "Your Phone",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.013,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                padding: const EdgeInsets.only(top:8,bottom:8),
                  child: ContactField(
                    hint: "Your company",
                    hintStyle: TextStyle(
                        fontSize: size.width * 0.013,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContactField(
                    verticalCenter: false,
                    hint: "Message",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.013,
                        fontWeight: FontWeight.bold),
                    height: size.width * 0.125,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
