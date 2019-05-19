import 'package:flutter_web/material.dart';
import 'package:flutterando_web/shared/mixins/after_layout_mixin.dart';

import 'scroll_thumb.dart';

class CustomScrollbarWidget extends StatefulWidget {
  final Widget child;
  final double heightScrollThumb;
  final TabController controller;
  final String customText;

  CustomScrollbarWidget({
    this.child,
    this.controller,
    this.heightScrollThumb = 50,
    this.customText = "",
  });

  @override
  _CustomScrollbarWidgetState createState() =>
      new _CustomScrollbarWidgetState();
}

class _CustomScrollbarWidgetState extends State<CustomScrollbarWidget>
    with AfterLayoutMixin {
  double barMaxScrollExtent = 0;
  double get barMinScrollExtent => 0;

  int get viewMaxScrollExtent => widget.controller.length - 1;
  double get viewMinScrollExtent => 0;
  double get viewScrollValue => widget.controller.animation.value;

  double get dragPos {
    return barMaxScrollExtent *
        viewScrollValue /
        viewMaxScrollExtent.toDouble();
  }

  double get viewPos {
    return dragPos * viewMaxScrollExtent / barMaxScrollExtent;
  }

  // void _onVerticalDragUpdate(DragUpdateDetails details) {
  //   // print("primaryDelta: ${details.primaryDelta}");
  //   // print("dy: ${details.globalPosition.dy}");
  //   // print("MaxBar: ${barMaxScrollExtent}");

  //   // print("index original: ${widget.controller.index}");
  //   // print("offset original: ${widget.controller.offset}");

  //   var index = (details.globalPosition.dy / barMaxScrollExtent * viewMaxScrollExtent).toInt();

  //   if (index != widget.controller.index) {
  //     widget.controller.animateTo(index);
  //   }

  //   var offset =
  //       ((details.globalPosition.dy - widget.heightScrollThumb / 2 * 3) /
  //               barMaxScrollExtent *
  //               viewMaxScrollExtent) -
  //           index;
  //   offset = offset < -1 ? -1 : offset;
  //   offset = offset > 1 ? 1 : offset;
  //   widget.controller.offset = offset;
  //   // print("offset: $offset");
  //   // print("index: $index");
  // }

  @override
  void afterLayout(Duration duration) {
    barMaxScrollExtent = context.size.height - widget.heightScrollThumb;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      widget.child,
      GestureDetector(
        // onVerticalDragUpdate: _onVerticalDragUpdate,
        child: AnimatedBuilder(
          animation: widget.controller.animation,
          child: ScrollThumb(
            height: widget.heightScrollThumb,
            customText: widget.customText,
          ),
          builder: (context, child) {
            return Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: dragPos),
              child: child,
            );
          },
        ),
      ),
    ]);
  }
}
