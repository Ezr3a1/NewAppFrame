import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshCustomFooter extends LoadIndicator {

  final OffsetCallBack onOffsetChange;

  final ModeChangeCallBack onModeChange;

  final VoidFutureCallBack readyLoading;

  final VoidFutureCallBack endLoading;

  const RefreshCustomFooter({
    Key key,
    double height: 60.0,
    this.onModeChange,
    this.onOffsetChange,
    this.readyLoading,
    this.endLoading,
    LoadStyle loadStyle: LoadStyle.ShowAlways,
    Function onClick,
  }) : super(key: key, onClick: onClick, loadStyle: loadStyle, height: height);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RefreshCustomFooterState();
  }
}

class _RefreshCustomFooterState extends LoadIndicatorState<RefreshCustomFooter> {
  @override
  void onOffsetChange(double offset) {
    // TODO: implement onOffsetChange
    if (widget.onOffsetChange != null) {
      widget.onOffsetChange(offset);
    }
    super.onOffsetChange(offset);
  }

  @override
  void onModeChange(LoadStatus mode) {
    // TODO: implement onModeChange
    if (widget.onModeChange != null) {
      widget.onModeChange(mode);
    }
    super.onModeChange(mode);
  }

  @override
  Future readyToLoad() {
    // TODO: implement readyToLoad
    if (widget.readyLoading != null) {
      return widget.readyLoading();
    }
    return super.readyToLoad();
  }

  @override
  Future endLoading() {
    // TODO: implement endLoading
    if (widget.endLoading != null) {
      return widget.endLoading();
    }
    return super.endLoading();
  }

  @override
  Widget buildContent(BuildContext context, LoadStatus mode) {
    // TODO: implement buildContent
    Widget body;
    if (mode == LoadStatus.idle) {
      body = Text("上拉加载");
    } else if (mode == LoadStatus.loading) {
      body = CupertinoActivityIndicator();
    } else if (mode == LoadStatus.failed) {
      body = Text("加载失败！点击重试！");
    } else if (mode == LoadStatus.canLoading) {
      body = Text("松手,加载更多!");
    } else if (mode == LoadStatus.noMore) {
      body = Container(
        padding: EdgeInsets.only(top: 28, bottom: 28),
        child: Text(
          "--我是有底线的--",
          style: TextStyle(
              color: Colors.black, fontSize: 12, height: 1),
        ),
      );
    }
    return Column(
      children: <Widget>[
        Divider(
          height: 1.0,
          color: Colors.black12,
        ),
        Container(
          color: Colors.white,
          height: 68.0,
          child: Center(child: body),
        )
      ],
    );
  }
}