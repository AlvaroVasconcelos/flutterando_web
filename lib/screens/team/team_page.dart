import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/model/team.dart';
import 'package:flutterando_web/shared/widgets/team_card/team_card.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key key}) : super(key: key);

  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  List<TeamModel> team = [
    TeamModel.fromMap({
      'nome': 'Matheus Longo Perez',
      'foto': 'images/team/matheus.jpg',
      'cargo': 'Progamador Backend',
      'descricao': 'Coloque uma descrição aqui'
    }),
    TeamModel.fromMap({
      'nome': 'Gabriel Sávio',
      'foto': 'images/team/gabriel.jpg',
      'cargo': 'Progamador Animador',
      'descricao': 'Coloque uma descrição aqui'
    }),
    TeamModel.fromMap({
      'nome': 'Alvaro Vasconcelos',
      'foto': 'images/team/alvaro.jpg',
      'cargo': 'Progamador Full Stack',
      'descricao': 'Coloque uma descrição aqui'
    }),
    TeamModel.fromMap({
      'nome': 'Rully Alves',
      'foto': 'images/team/rully.jpg',
      'cargo': 'Progamador Backend',
      'descricao': 'Coloque uma descrição aqui'
    }),
    TeamModel.fromMap({
      'nome': 'Vilson Dauinheimer',
      'foto': 'images/team/bwolf.jpg',
      'cargo': 'Progamador Full Stack',
      'descricao': 'Coloque uma descrição aqui'
    }),
    TeamModel.fromMap({
      'nome': 'David Araujo',
      'foto': 'images/team/david.jpg',
      'cargo': 'Progamador Animador',
      'descricao': 'Coloque uma descrição aqui'
    }),
    TeamModel.fromMap({
      'nome': 'Jacob Moura',
      'foto': 'images/team/jacob.jpg',
      'cargo': 'CEO & Fundador',
      'descricao': 'Coloque uma descrição aqui'
    })
  ];
  var size;

  _initBuild() {
    team.shuffle();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    _initBuild();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Nosso Time',
                  style: TextStyle(
                      fontSize: (size.width * .05), color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 3,),
                Text(
                  'Uma breve descrição desse projetos de progamadores aqui :D',
                  style: TextStyle(
                      fontSize: (size.width * .012), color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10,),
                Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  spacing: 50,
                  runSpacing: 50,
                  children: <Widget>[
                    TeamCard(team: team[0], size: size),
                    TeamCard(team: team[1], size: size),
                    TeamCard(team: team[2], size: size),
                    TeamCard(team: team[3], size: size),
                    TeamCard(team: team[4], size: size),
                    TeamCard(team: team[5], size: size),
                    TeamCard(team: team[6], size: size),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                alignment: Alignment.bottomCenter,
                image: AssetImage('images/shap-r.png'),
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(95, 95, 95, 1),
                  Color.fromRGBO(0, 85, 155, 1),
                  Color.fromRGBO(85, 200, 245, 1),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
        ),
      ],
    );
  }
}