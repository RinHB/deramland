import 'package:flutter/material.dart';

import '../view/PersonalHomePage_View/CollectionDetailsPage.dart';
import '../view/PersonalHomePage_View/CollectionRecordPage.dart';
import '../view/PersonalHomePage_View/MyOrderPage.dart';
import '../view/PersonalHomePage_View/OrderDetailsPage.dart';
import '../view/PersonalHomePage_View/PersonalInformationPage.dart';
import '../view/PersonalHomePage_View/QrCodePage.dart';
import '../view/PersonalHomePage_View/SwitchThemePage.dart';
import '../view/PersonalHomePage_View/my_mean_page/blockchain_select_page.dart';
import '../view/staring_view/VerificationCodeLogin.dart';
import '../view/staring_view/emailLogin.dart';
import '../view/staring_view/inputVerificationCode.dart';
import '../view/staring_view/passwordLogin.dart';
import '../view/staring_view/registered.dart';

class Routers{
  static final _routes={
    '/PasswordLogin': (context,{Object? args}) =>const PasswordLogin(),
    '/VerificationCodeLogin':(context,{Object? args}) =>const VerificationCodeLogin(),
    '/InputVerificationCode':(context,{Object? args}) =>InputVerificationCode(),
    '/Registered':(context,{Object? args}) =>const Registered(),
    '/EmailLogin':(context,{Object? args}) =>const EmailLogin(),
    '/PersonalInformationPage':(context,{Object? args}) =>const PersonalInformationPage(),
    '/QrCodePage':(context,{Object? args}) =>const QrCodePage(),
    '/SwitchThemePage':(context,{Object? args}) =>const SwitchThemePage(),
    '/MyOrderPage':(context,{Object? args}) =>const MyOrderPage(),
    '/OrderDetailsPage':(context,{Object? args}) =>OrderDetailsPage(),
    '/CollectionRecordPage':(context,{Object? args}) =>const CollectionRecordPage(),
    '/CollectionDetailsPage':(context,{Object? args}) =>const CollectionDetailsPage(),
    '/BlockChainSelectPage':(context,{Object? args}) =>const BlockChainSelectPage(),
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