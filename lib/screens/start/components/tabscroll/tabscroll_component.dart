import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/mixins/after_layout_mixin.dart';
import 'package:flutterando_web/shared/widgets/vertical_tabbarview/tab_model.dart';

import 'scroll_thumb.dart';

class TabscrollbarWidget extends StatefulWidget {
  final Widget child;
  final double heightScrollThumb;
  final ScrollController controller;
  final List<TabModel> tabs;

  TabscrollbarWidget({
    @required this.tabs,
    @required this.child,
    @required this.controller,
    this.heightScrollThumb = 50,
  });

  @override
  _TabscrollbarWidgetState createState() => new _TabscrollbarWidgetState();
}

class _TabscrollbarWidgetState extends State<TabscrollbarWidget>
    with AfterLayoutMixin {
  double barMaxScrollExtent = 0;
  bool scrollLoaded = false;

  double get barMinScrollExtent => 0;

  double get viewMaxScrollExtent =>
      scrollLoaded ? widget.controller.position.maxScrollExtent : .0;

  double get viewMinScrollExtent =>
      scrollLoaded ? widget.controller.position.minScrollExtent : .0;

  double get viewScrollValue => scrollLoaded ? widget.controller.offset : .0;

  double get dragPos => scrollLoaded
      ? barMaxScrollExtent * viewScrollValue / viewMaxScrollExtent
      : .0;

  double get viewPos => dragPos * viewMaxScrollExtent / barMaxScrollExtent;

  double get page => scrollLoaded
      ? viewScrollValue / viewMaxScrollExtent * (widget.tabs.length - 1)
      : 0;

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    var index =
        details.globalPosition.dy / barMaxScrollExtent * viewMaxScrollExtent;
    index -= widget.heightScrollThumb * 6;
    if (index != widget.controller.offset &&
        index <= widget.controller.position.maxScrollExtent &&
        index >= 0) {
      widget.controller.jumpTo(index);
    }
  }

  @override
  void afterLayout(Duration duration) {
    barMaxScrollExtent = context.size.height - widget.heightScrollThumb;
    scrollLoaded = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: _onVerticalDragUpdate,
      child: AnimatedBuilder(
        animation: widget.controller,
        builder: (context, _) {
          return Stack(
            children: <Widget>[
              widget.child,
              Positioned(
                right: 0,
                top: dragPos,
                child: ScrollThumb(
                  height: widget.heightScrollThumb,
                  customText: widget.tabs[page.round()].title,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
