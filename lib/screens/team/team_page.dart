import 'package:flutter_web/material.dart';
import 'package:flutterando_web/screens/contact/widget/team.dart';
import 'package:flutterando_web/screens/contact/widget/titulo.dart';
import 'package:flutterando_web/shared/model/team.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key key}) : super(key: key);

  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  List<TeamModel> team = List<TeamModel>();

  void _getTeam() {
    team.add(TeamModel.fromMap({
      'nome': 'Matheus Perez',
      'foto': 'images/team/matheus.jpg',
      'cargo': 'progamador',
      'descricao': 'dsa dsadsa'
    }));
    team.add(TeamModel.fromMap({
      'nome': 'Gabriel Sávio',
      'foto': 'images/team/gabriel.jpg',
      'cargo': 'progamador 2',
      'descricao': 'aaaaaaa'
    }));
    team.add(TeamModel.fromMap({
      'nome': 'Alvaro Vasconcelos',
      'foto': 'images/team/alvaro.jpg',
      'cargo': 'progamador 3',
      'descricao': 'eeeeeeeee'
    }));
    team.add(TeamModel.fromMap({
      'nome': 'Rully Alves',
      'foto': 'images/team/rully.jpg',
      'cargo': 'progamador 4',
      'descricao': 'iiiiiiiiiiii'
    }));
    team.add(TeamModel.fromMap({
      'nome': 'Vilson Dauinheimer',
      'foto': 'images/team/bwolf.jpg',
      'cargo': 'progamador 4',
      'descricao': 'oooooooooo'
    }));
    team.add(TeamModel.fromMap({
      'nome': 'David Araujo',
      'foto': 'images/team/david.jpg',
      'cargo': 'progamador 4',
      'descricao': 'uuuuuuuuuuuuu'
    }));
    team.add(TeamModel.fromMap({
      'nome': 'Jacob Moura',
      'foto': 'images/team/jacob_.jpg',
      'cargo': 'progamador 4',
      'descricao': 'ddddd'
    }));
    team.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    _getTeam();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset('images/bg-time.png'),
          ),
          Container(
            //color: Color.fromRGBO(248, 248, 250, 1),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TituloWidget(texto: "Nosso Time"),
                SizedBox(height: 50,),  
                Wrap(
                    alignment: WrapAlignment.center,
                    direction: Axis.horizontal,
                    spacing: 50,
                    runSpacing: 50,
                    children: <Widget>[
                        TeamWidget(team: team[0]),
                        TeamWidget(team: team[1]),
                        TeamWidget(team: team[2]),
                        TeamWidget(team: team[3]),
                        TeamWidget(team: team[4]),
                        TeamWidget(team: team[5]),
                        TeamWidget(team: team[6]),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
