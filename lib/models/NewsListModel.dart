import 'package:json_annotation/json_annotation.dart';

part 'NewsListModel.g.dart';


List<NewsListModel> getNewsListModelList(List<dynamic> list){
  List<NewsListModel> result = [];
  list.forEach((item){
    result.add(NewsListModel.fromJson(item));
  });
  return result;
}
@JsonSerializable()
class NewsListModel extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'post_title')
  String postTitle;

  @JsonKey(name: 'thumbnail')
  String thumbnail;

  @JsonKey(name: 'post_like')
  int postLike;

  @JsonKey(name: 'is_like')
  int isLike;

  @JsonKey(name: 'is_collect')
  int isCollect;

  NewsListModel(this.id,this.postTitle,this.thumbnail,this.postLike,this.isLike,this.isCollect,);

  factory NewsListModel.fromJson(Map<String, dynamic> srcJson) => _$NewsListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsListModelToJson(this);

}


