import 'package:flutter_web/material.dart';
import 'package:flutterando_web/screens/about/AboutPage.dart';
import 'package:flutterando_web/screens/contact/ContactPage.dart';
import 'package:flutterando_web/screens/home/HomePage.dart';
import 'package:flutterando_web/shared/widgets/gradient_appbar/Gradient_AppBar.dart';
import 'package:flutterando_web/shared/widgets/link_button/Link_Button.dart';
import 'package:flutterando_web/screens/team/TeamPage.dart';
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/tab_model.dart';
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/vertical_tabbarview.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(initialIndex: 0, length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<TabModel> tabs = [
    TabModel(title: "Home", contentBuilder: (context) => HomePage()),
    TabModel(title: "Sobre", contentBuilder: (context) => AboutPage()),
    TabModel(title: "Equipe", contentBuilder: (context) => TeamPage()),
    TabModel(title: "Contato", contentBuilder: (context) => ContactPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: GradientAppBar(
          image: 'images/logo.png',
          buttons: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: tabs.map((tab) {
              return Tab(text: tab.title);
            }).toList(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: VerticalTabBarView(
                  controller: _tabController,
                  children:
                      tabs.map((tab) => tab.contentBuilder(context)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
