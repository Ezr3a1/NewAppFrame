import 'package:newappframe/models/NewsListModel.dart';
import 'package:newappframe/provider/view_state_refresh_list_model.dart';
import 'package:newappframe/services/auth/AuthService.dart';

class HomePageModel extends ViewStateRefreshListModel{

  @override
  Future<List<NewsListModel>> loadData({int pageNum}) async {
    return await AuthService.fetchSearchResult(pageNum: pageNum);
    // TODO: implement loadData
    throw UnimplementedError();
  }
}