// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ja';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "home" : MessageLookupByLibrary.simpleMessage("首页"),
    "message" : MessageLookupByLibrary.simpleMessage("消息"),
    "mine" : MessageLookupByLibrary.simpleMessage("我的"),
    "news" : MessageLookupByLibrary.simpleMessage("新闻"),
    "order" : MessageLookupByLibrary.simpleMessage("订单"),
    "viewStateButtonLogin" : MessageLookupByLibrary.simpleMessage("登录"),
    "viewStateButtonRefresh" : MessageLookupByLibrary.simpleMessage("刷新一下"),
    "viewStateButtonRetry" : MessageLookupByLibrary.simpleMessage("重试"),
    "viewStateMessageEmpty" : MessageLookupByLibrary.simpleMessage("空空如也"),
    "viewStateMessageError" : MessageLookupByLibrary.simpleMessage("加载失败"),
    "viewStateMessageNetworkError" : MessageLookupByLibrary.simpleMessage("网络连接异常,请检查网络或稍后重试"),
    "viewStateMessageUnAuth" : MessageLookupByLibrary.simpleMessage("未登录")
  };
}
