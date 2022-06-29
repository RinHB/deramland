import 'package:flutter/material.dart';

import '../view/staring_view/VerificationCodeLogin.dart';
import '../view/staring_view/inputVerificationCode.dart';
import '../view/staring_view/passwordLogin.dart';
import '../view/staring_view/registered.dart';

class Routers{
  static final _routes={
    '/PasswordLogin': (context,{Object? args}) =>const PasswordLogin(),
    '/VerificationCodeLogin':(context,{Object? args}) =>const VerificationCodeLogin(),
    '/InputVerificationCode':(context,{Object? args}) =>InputVerificationCode(),
    '/Registered':(context,{Object? args}) =>const Registered()
  };

  //监听route，类似于拦截器原理
  var getRoutes = (RouteSettings settings){
    //验证是否有效
    final routeName = settings.name;
    var builder = _routes[routeName];
    Route? route;
    if (builder == null){
      return route;
    }else{
      route = MaterialPageRoute(builder:(context) => builder(context,args:settings.arguments));
    }
    return route;
  };
}