import 'package:flutter_web/material.dart';
import 'package:flutterando_web/screens/about/about_page.dart';
import 'package:flutterando_web/screens/contact/contact_page.dart';
import 'package:flutterando_web/screens/home/home_page.dart';
import 'package:flutterando_web/shared/widgets/custom_scrollbar/custom_scrollbar_widget.dart';
import 'package:flutterando_web/shared/widgets/gradient_appbar/gradient_appbar.dart';
import 'package:flutterando_web/screens/team/team_page.dart';
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/tab_model.dart';
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/vertical_tabbarview.dart';

import 'bottom/Bottom_Bar.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController =
        TabController(initialIndex: 0, length: tabs.length, vsync: this,);

        _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
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
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: GradientAppBar(
          image: 'images/logo.png',
          buttons: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: tabs.map((tab) => Tab(text: tab.title)).toList(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: AnimatedBuilder(
                  animation: _tabController.animation,
                  builder: (context, child) {
                    return CustomScrollbarWidget(
                      controller: _tabController,
                      customText: tabs[_tabController.animation.value.round()].title,
                      child: child
                    );
                  },
                  child: VerticalTabBarView(
                        tabController: _tabController,
                        physics: ScrollPhysics(),
                        children:
                            tabs.map((tab) => tab.contentBuilder(context)).toList(),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
