import 'package:flutter_web/material.dart';
import 'package:flutterando_web/screens/team/team_page_item.dart';
import 'package:flutterando_web/screens/team/team_page_transformer.dart';
import 'package:flutterando_web/shared/model/team.dart';

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

    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                repeat: ImageRepeat.noRepeat,
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
          ),
        ),
        LayoutBuilder(builder: (context, boxConstraints) {
          if (boxConstraints.maxWidth >= 720) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'Nosso Time',
                    style: TextStyle(
                        fontSize: (size.width * .04), color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: PageTransformer(
                        pageViewBuilder: (context, visibilityResolver) {
                      return PageView.builder(
                        itemCount: team.length,
                        controller: PageController(
                          viewportFraction: 0.30,
                          initialPage: 3,
                        ),
                        itemBuilder: (context, index) {
                          final pageVisibility =
                              visibilityResolver.resolvePageVisibility(index);
                          return IntroPageItem(
                            teamModel: team[index],
                            pageVisibility: pageVisibility,
                          );
                        },
                      );
                    }),
                  )
                ],
              ),
            );
          } else {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Nosso Time',
                    style: TextStyle(
                      fontSize: (size.width * .07),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: PageTransformer(
                        pageViewBuilder: (context, visibilityResolver) {
                      return PageView.builder(
                        itemCount: 7,
                        controller: PageController(
                          viewportFraction: 0.85,
                          initialPage: 3,
                        ),
                        itemBuilder: (context, index) {
                          final pageVisibility =
                              visibilityResolver.resolvePageVisibility(index);
                          return IntroPageItem(
                            teamModel: team[index],
                            pageVisibility: pageVisibility,
                          );
                        },
                      );
                    }),
                  )
                ],
              ),
            );
          }
        }),
      ],
    );
  }
}
