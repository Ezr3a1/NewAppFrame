

import 'package:newappframe/config/Constant.dart';
import 'package:newappframe/models/NewsListModel.dart';

import '../bsd_api.dart';

class AuthService {
  /*
  * 登录
  * */
  static Future login() async {
    var response =
    await http.post('/Home/Pub/login',data: {
      'phone': '15621618336',
      'osNo': 'iPhone'});
    return response.data;
  }

  /*
  * 学校新闻
  * 页数：page
  * 分页数量：limit
  * 鉴权：token
  * */
  static Future<List<NewsListModel>> fetchSearchResult({int pageNum}) async {
    var response =
    await http.post('/api.php/index/index/find',data: null, queryParameters: null);
    return getNewsListModelList(response.data);
  }
}
