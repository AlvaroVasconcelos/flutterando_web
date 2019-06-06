import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';

class AboutCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const AboutCard({
    Key key,
    this.title,
    this.subTitle,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45),
      ),
      elevation: 2,
      child: LayoutBuilder(builder: (context, boxConstraints) {
        if (boxConstraints.maxWidth >= 720) {
          return Container(
            constraints: BoxConstraints(maxWidth: 250),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                CircleAvatar(
                  maxRadius: 60,
                  child: Image.asset(image),
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                  softWrap: true,
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    subTitle,
                    style: Theme.of(context).textTheme.overline,
                    softWrap: true,
                  ),
                )
              ],
            ),
          );
        } else {
          return Container(
            constraints: BoxConstraints(maxWidth: 250, maxHeight: 300),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                CircleAvatar(
                  maxRadius: 60,
                  child: Image.asset(image),
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                  softWrap: true,
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    subTitle,
                    style: Theme.of(context).textTheme.overline,
                    softWrap: true,
                  ),
                )
              ],
            ),
          );
        }
      }),
    );
  }
}
