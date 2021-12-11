import 'package:flutter/cupertino.dart';

/// @author wu chao
/// @project flutter_tools
/// @date 2021/12/10
class CustomNavigator {
  //路由key
  static final GlobalKey<NavigatorState> routerGlobalKey =
  GlobalKey<NavigatorState>();

  // 跳转到主页面IndexPage并删除当前路由
  static void goHomePageIndex(int index, {BuildContext? context}) {
    CustomNavigator.pushReplacementNamed('home',
        context: context, arguments: {'index': index});
  }

  /// 退出登录, 清空数据
  static void logout({BuildContext? context}) async {
    CustomNavigator.pushReplacementNamed("login", context: context);
  }

  //路由跳转
  static Future push(String routerName,
      {BuildContext? context,
        dynamic arguments,}) {
    context ??= routerGlobalKey.currentContext;
    if (context == null) {
      return Future.error('context is null ！');
    }
    return Navigator.of(context)
        .pushNamed(routerName, arguments: arguments);
  }

  //路由跳转清除当前路由
  static Future pushReplacementNamed(String routerName,
      {BuildContext? context, dynamic arguments}) {
    context ??= routerGlobalKey.currentContext;
    if (context == null) {
      return Future.error('context is null ！');
    }
    return Navigator.of(context)
        .pushReplacementNamed(routerName, arguments: arguments);
  }

  //关闭当前路由
  static pop(
      {dynamic value, BuildContext? context, bool rootNavigator = false}) {
    context ??= routerGlobalKey.currentContext;
    if (context == null) {
      return Future.error('context is null ！');
    }
    Navigator.of(context, rootNavigator: rootNavigator).pop(value);
  }
}
