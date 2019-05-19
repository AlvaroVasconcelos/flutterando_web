import 'package:flutter_web/material.dart';
<<<<<<< HEAD:lib/screens/StartPage.dart
import 'package:flutterando_web/screens/about/AboutPage.dart';
import 'package:flutterando_web/screens/contact/contact_page.dart';
import 'package:flutterando_web/screens/home/HomePage.dart';
import 'package:flutterando_web/shared/widgets/gradient_appbar/Gradient_AppBar.dart';
import 'package:flutterando_web/screens/team/team_page.dart';
=======
import 'package:flutterando_web/shared/widgets/custom_scrollbar/custom_scrollbar_widget.dart';
import 'package:flutterando_web/shared/widgets/gradient_appbar/gradient_appbar.dart';
>>>>>>> master:lib/screens/start_page.dart
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/tab_model.dart';
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/vertical_tabbarview.dart';

import 'contact/contact_page.dart';
import 'about/about_page.dart';
import 'team/team_page.dart';
import 'home/home_page.dart';

class StartPage extends StatefulWidget {
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
