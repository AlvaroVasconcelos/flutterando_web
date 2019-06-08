import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/model/team.dart';

class TeamCard extends StatelessWidget {
  final TeamModel team;

  TeamCard({this.team});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                  maxHeight: 100, maxWidth: 100, minHeight: 50, minWidth: 50),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: ExactAssetImage(team?.getFoto))),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                team?.getNome,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(47, 90, 125, 1.0),
                    fontSize: (14),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                team.getCargo,
                style: TextStyle(color: Color.fromRGBO(94, 94, 95, 1)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
