import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/widgets/contact_field/contact_field.dart';

import '../contact_bloc.dart';
import 'contact_container.dart';

class ContactForm extends StatefulWidget {
  ContactForm({Key key}) : super(key: key);

  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  ContactBloc _contactBloc;

  @override
  void initState() {
    _contactBloc = new ContactBloc();
    super.initState();
  }

  @override
  void dispose() {
    _contactBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Form(
        key: _formKey,
        child: LayoutBuilder(builder: (context, boxConstraints) {
          if (boxConstraints.maxWidth >= 720) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Reach us quickly",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                        child: ContactField(
                          onSaved: _contactBloc.nameEvent.add,
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
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ContactField(
                          onSaved: _contactBloc.emailEvent.add,
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
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                        child: ContactField(
                          onSaved: _contactBloc.phoneEvent.add,
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
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ContactField(
                          onSaved: _contactBloc.companyEvent.add,
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
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ContactField(
                          verticalCenter: false,
                          onSaved: _contactBloc.messageEvent.add,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: size.width * 0.125,
                    child: RaisedButton(
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                          "Send Message",
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        _formKey.currentState.save();
                      },
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Reach us quickly",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                ContactContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                        child: ContactField(
                          onSaved: _contactBloc.nameEvent.add,
                          hint: "Enter name",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ContactField(
                          onSaved: _contactBloc.emailEvent.add,
                          hint: "Enter email",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width * 0.05,
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
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                        child: ContactField(
                          onSaved: _contactBloc.phoneEvent.add,
                          hint: "Your Phone",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ContactField(
                          onSaved: _contactBloc.companyEvent.add,
                          hint: "Your company",
                          hintStyle: TextStyle(
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ContactField(
                          verticalCenter: false,
                          onSaved: _contactBloc.messageEvent.add,
                          hint: "Message",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold),
                          height: size.width * 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: InkWell(
                      onTap: () {
                        _formKey.currentState.save();
                      },
                      child: Card(
                        color: Colors.transparent,
                        child: Container(
                          color: Colors.lightBlue,
                          height: 25,
                          width: size.width * 0.3,
                          child: Center(
                            child: Text(
                              "Send Message",
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
