import 'package:flutter_web/material.dart';
import 'contact_tile.dart';

import 'contact_text_tile.dart';

class ContactContainer extends StatefulWidget {
  ContactContainer({Key key}) : super(key: key);

  _ContactContainerState createState() => _ContactContainerState();
}

class _ContactContainerState extends State<ContactContainer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, boxConstraints) {
      if (boxConstraints.maxWidth >= 720) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContactTextTile(
                title: Text(
                  "Contact with us",
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaa",
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.grey),
                ),
              ),
              ContactTile(
                icon: Icon(Icons.phone),
                text: Text(
                  "Phone: +61 2 8376 6284",
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
              ),
              ContactTile(
                icon: Icon(Icons.email),
                text: Text(
                  "Email: hello@yourdomain.com",
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        );
      } else {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContactTile(
                icon: Icon(Icons.phone),
                text: Text(
                  "Phone: +61 2 8376 6284",
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
              ),
              ContactTile(
                icon: Icon(Icons.email),
                text: Text(
                  "Email: hello@yourdomain.com",
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
