import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/model/team.dart';

class TeamWidget extends StatelessWidget {
  final TeamModel team;

  TeamWidget({this.team});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(10),
    //  color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
                maxHeight: 200, maxWidth: 200, minHeight: 150, minWidth: 150),
            width: width * 0.20,
            height: height * 0.20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: ExactAssetImage(team?.getFoto()))),
          ),
          SizedBox(height: 5,),
          Text(
            team?.getNome(),
            style: TextStyle(color: Colors.black, fontSize: 22),
          )
        ],
      ),
    );
  }
}
