import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newappframe/models/NewsListModel.dart';
import 'package:newappframe/provider/provider_widget.dart';
import 'package:newappframe/provider/view_state_widget.dart';
import 'package:newappframe/ui/helpers/PacteraCachedNetworkImage.dart';
import 'package:newappframe/ui/widgets/RefreshCustomFooter.dart';
import 'package:newappframe/view_models/home/HomePageModel.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> with AutomaticKeepAliveClientMixin {
  ValueNotifier<int> valueNotifier;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ProviderWidget<HomePageModel>(builder: (context,model,child){
      if (model.isBusy) {
        return ViewStateBusyWidget();
      } else if (model.isError && model.list.isEmpty) {
        return ViewStateErrorWidget(
            error: model.viewStateError, onPressed: model.initData);
      } else if (model.isEmpty) {
        return ViewStateEmptyWidget(onPressed: model.initData);
      }
      return Scaffold(
        appBar: AppBar(title: Text("home"),),
        body: SmartRefresher(
            controller: model.refreshController,
            header: WaterDropHeader(),
            footer: RefreshCustomFooter(),
            onRefresh: model.refresh,
            onLoading: model.loadMore,
            enablePullUp: true,
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: model.list.length,
                itemBuilder: (context, index) {
                  return _newsListItemWidget(model.list[index]);
                })),
      );
    }, model: HomePageModel(),
    onModelReady: (model) => model.initData(),);
  }

  Widget _newsListItemWidget(NewsListModel newsListModel){
    return InkWell(
      onTap: (){

      },
      child: Container(
        child: Row(
          children: [
            PacteraCachedNetworkImage(
              image: newsListModel.thumbnail,
              height: 100,
              width: 100,
            ),
            Expanded(flex: 1,child: Text(newsListModel.postTitle,style: TextStyle(fontSize: 16),))
          ],
        ),
      ),
    );
  }
}
