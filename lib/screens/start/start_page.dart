import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/models/tab_model.dart';
import 'package:flutterando_web/shared/widgets/gradient_appbar/gradient_appbar.dart';

import '../home/home_page.dart';
import '../team/team_page.dart';
import '../about/about_page.dart';
import '../bottom/bottom_bar.dart';
import '../contact/contact_page.dart';
import 'components/tabbar/tabbar_component.dart';
import 'components/tabscroll/tabscroll_component.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController(initialScrollOffset: 0);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  int get currentIndex {
    var val = ((_scrollController?.positions?.isEmpty ?? false)
            ? 0
            : (_scrollController.offset /
                _scrollController.position.maxScrollExtent *
                tabs.length))
        .round();

    return val >= tabs.length ? tabs.length - 1 : 0;
  }

  List<TabModel> tabs = [
    TabModel(title: "Home", contentBuilder: (context) => HomePage()),
    TabModel(title: "Sobre", contentBuilder: (context) => AboutPage()),
    TabModel(title: "Equipe", contentBuilder: (context) => TeamPage()),
    TabModel(title: "Contato", contentBuilder: (context) => ContactPage()),
    TabModel(title: "Bottom Bar", contentBuilder: (context) => BottomBar()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
          image: 'images/logo.png',
          buttons: TabbarComponent(
            tabs: tabs,
            indicatorColor: Colors.white,
            controller: _scrollController,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: AnimatedBuilder(
                animation: _scrollController,
                builder: (context, child) {
                  return TabscrollbarWidget(
                    controller: _scrollController,
                    child: child,
                    tabs: tabs,
                  );
                },
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 55,
                      child: tabs[index].contentBuilder(context),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
