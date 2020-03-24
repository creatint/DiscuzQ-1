import 'package:flutter/material.dart';
import 'package:discuzq/ui/ui.dart';

import 'package:discuzq/states/scopedState.dart';
import 'package:discuzq/states/appState.dart';
import 'package:discuzq/widgets/threads/render/ThreadExtendBottomBar.dart';

class ThreadDetailDelegate extends StatefulWidget {
  const ThreadDetailDelegate({Key key}) : super(key: key);
  @override
  _ThreadDetailDelegateState createState() => _ThreadDetailDelegateState();
}

class _ThreadDetailDelegateState extends State<ThreadDetailDelegate> {
  @override
  void setState(fn) {
    if (!mounted) {
      return;
    }
    super.setState(fn);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScopedStateModelDescendant<AppState>(
      rebuildOnChange: false,
      builder: (context, child, state) => Scaffold(
            backgroundColor: DiscuzApp.themeOf(context).scaffoldBackgroundColor,
            body: Stack(
              children: <Widget>[
                ///
                /// 底部点赞 回复 打赏工具栏
                _positionedBottomBar(),
              ],
            ),
          ));

  Widget _positionedBottomBar() => Positioned(
        bottom: 0,
        child: const ThreadExtendBottomBar(),
      );
}
