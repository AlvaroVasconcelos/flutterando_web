import 'package:animated_card/animated_card.dart';
import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/mixins/after_layout_mixin.dart';
import 'package:flutterando_web/shared/models/tab_model.dart';

class TabbarComponent extends StatefulWidget {
  final List<TabModel> tabs;
  final ScrollController controller;
  final Color indicatorColor;
  final Color textColor;
  final double customPadding;
  TabbarComponent({
    Key key,
    @required this.tabs,
    @required this.controller,
    this.indicatorColor = Colors.white,
    this.textColor = Colors.white,
    this.customPadding = 5,
  }) : super(key: key);

  @override
  _TabbarComponentState createState() => _TabbarComponentState();
}

class _TabbarComponentState extends State<TabbarComponent>
    with AfterLayoutMixin {
  bool scrollLoaded = false;
  double itemWidth;
  var textKey = <GlobalKey>[];
  var contextSize = Size(0, 0);

  double get barMaxScrollExtent => scrollLoaded
      ? (itemWidth * (widget.tabs.length - 1) +
          (widget.customPadding * (widget.tabs.length - 1) * 2))
      : 0;

  double get barMinScrollExtent => 0;

  double get viewMaxScrollExtent =>
      scrollLoaded ? widget.controller?.position?.maxScrollExtent : 0;

  double get viewMinScrollExtent =>
      scrollLoaded ? widget.controller?.position?.minScrollExtent : 0;

  double get viewScrollValue =>
      scrollLoaded ? (widget.controller?.offset ?? 0) : 0;

  double get dragPos => scrollLoaded
      ? (viewScrollValue / viewMaxScrollExtent * barMaxScrollExtent)
      : 0;

  double get page => scrollLoaded
      ? (widget.controller.offset /
          viewMaxScrollExtent *
          (widget.tabs.length - 1))
      : 0;

  double offsetFromIndex(int index) {
    var response = viewMaxScrollExtent / (widget.tabs.length - 1) * index;
    return response; // + response * 0.25;
  }

  double get offsetBase {
    var val = scrollLoaded
        ? (widget.controller.offset - (widget.controller.offset + 1).round())
        : 0;
    return (val < -1) ? -1 : (val > 1) ? 1 : val;
  }

  @override
  void initState() {
    super.initState();
    textKey = List.generate(widget.tabs.length, (index) => GlobalKey());
  }

  @override
  void afterLayout(Duration duration) {
    contextSize = context.size;
    setState(() {
      var itemsWidth = textKey.map((k) => k.currentContext.size.width).toList();
      itemWidth =
          itemsWidth.reduce((old, current) => old > current ? old : current);
    });
    scrollLoaded = true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        return Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: dragPos,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: (itemWidth ?? 0) + widget.customPadding * 2,
                height: 2,
                color: widget.indicatorColor,
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: widget.tabs.length,
              itemBuilder: (context, index) {
                var tab = widget.tabs[index];
                bool isCurrent = page.round() == index;
                return AnimatedCard(
                  direction: AnimatedCardDirection.right,
                  duration: Duration(seconds: 1),
                  child: InkWell(
                    onTap: () => widget.controller.animateTo(
                          offsetFromIndex(index),
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: widget.customPadding),
                      alignment: Alignment.center,
                      width: itemWidth,
                      child: Text(
                        tab.title,
                        key: textKey[index],
                        style: TextStyle(
                          color: isCurrent
                              ? widget.textColor
                              : widget.textColor.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

/*
import 'package:flutter_web/material.dart';

class TabbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/
