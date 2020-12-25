// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsListModel _$NewsListModelFromJson(Map<String, dynamic> json) {
  return NewsListModel(
    json['id'] as int,
    json['post_title'] as String,
    json['thumbnail'] as String,
    json['post_like'] as int,
    json['is_like'] as int,
    json['is_collect'] as int,
  );
}

Map<String, dynamic> _$NewsListModelToJson(NewsListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_title': instance.postTitle,
      'thumbnail': instance.thumbnail,
      'post_like': instance.postLike,
      'is_like': instance.isLike,
      'is_collect': instance.isCollect,
    };
