import 'package:flutter/material.dart';
import 'package:flutter_deramland/view/PersonalHomePage_View/my_mean_page/blockchain_account_information_page.dart';

import '../view/Home_View/BookingCommodity_View/BookingCommodityDetailedPage.dart';
import '../view/PersonalHomePage_View/AboutDreamLand_View/AboutDreamLandPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/AccountsAndSecurityPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/ChangePasswordPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/FaceVerificationPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/ModifyEmailPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/RealNameVerifiedPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/VerifyMobilePhoneNumberPage.dart';
import '../view/PersonalHomePage_View/AccountsAndSecurity_View/VerifyPhoneInformationPage.dart';
import '../view/PersonalHomePage_View/CollectionRecord_View/CollectionDetailsPage.dart';
import '../view/PersonalHomePage_View/CollectionRecord_View/CollectionRecordPage.dart';
import '../view/PersonalHomePage_View/CollectionRecord_View/ConfirmGiftPage.dart';
import '../view/PersonalHomePage_View/CollectionRecord_View/GiftObjectPage.dart';
import '../view/PersonalHomePage_View/CollectionRecord_View/ReceiveAGiftPage.dart';
import '../view/PersonalHomePage_View/MyOrder_View/MyOrderPage.dart';
import '../view/PersonalHomePage_View/MyOrder_View/OrderDetailsPage.dart';
import '../view/PersonalHomePage_View/MySettings_View/DestroyAccountPage.dart';
import '../view/PersonalHomePage_View/MySettings_View/GeneralSettingsPage.dart';
import '../view/PersonalHomePage_View/MySettings_View/MessageSettingsPage.dart';
import '../view/PersonalHomePage_View/MySettings_View/MySettingsPage.dart';
import '../view/PersonalHomePage_View/MySettings_View/PrivacySettingPage.dart';
import '../view/PersonalHomePage_View/NotificationMessage_View/NotificationMessagePage.dart';
import '../view/PersonalHomePage_View/OthersHomepage_View/OthersHomepagePage.dart';
import '../view/PersonalHomePage_View/PersonalCollectionDisplayPage.dart';
import '../view/PersonalHomePage_View/PersonalInformationPage.dart';
import '../view/PersonalHomePage_View/QrCodePage.dart';
import '../view/PersonalHomePage_View/SwitchThemePage.dart';
import '../view/PersonalHomePage_View/my_mean_page/blockchain_account/blockchain_account_information_view.dart';
import '../view/PersonalHomePage_View/my_mean_page/blockchain_select_page.dart';
import '../view/staring_view/VerificationCodeLogin.dart';
import '../view/staring_view/emailLogin.dart';
import '../view/staring_view/inputVerificationCode.dart';
import '../view/staring_view/passwordLogin.dart';

class Routers{
  static final _routes={
    '/PasswordLogin': (context,{Object? args}) =>const PasswordLogin(),
    '/VerificationCodeLogin':(context,{Object? args}) =>const VerificationCodeLogin(),
    '/InputVerificationCode':(context,{Object? args}) =>const InputVerificationCode(),
    '/EmailLogin':(context,{Object? args}) =>const EmailLogin(),
    '/PersonalInformationPage':(context,{Object? args}) =>const PersonalInformationPage(),
    '/QrCodePage':(context,{Object? args}) =>const QrCodePage(),
    '/SwitchThemePage':(context,{Object? args}) =>const SwitchThemePage(),
    '/MyOrderPage':(context,{Object? args}) =>const MyOrderPage(),
    '/OrderDetailsPage':(context,{Object? args}) =>OrderDetailsPage(),
    '/CollectionRecordPage':(context,{Object? args}) =>const CollectionRecordPage(),
    '/CollectionDetailsPage':(context,{Object? args}) =>const CollectionDetailsPage(),
    '/NotificationMessagePage':(context,{Object? args}) =>const NotificationMessagePage(),
    '/BlockChainSelectPage':(context,{Object? args}) =>const BlockChainSelectPage(),
    '/BlockchainAccountInformationPage':(context,{Object? args}) =>const BlockchainAccountInformationPage(),
    '/BlockChainAccountInformationView':(context,{Object? args}) =>const BlockChainAccountInformationView(),
    '/BookingCommodityDetailedPage':(context,{Object? args}) =>const BookingCommodityDetailedPage(),
    '/AccountsAndSecurityPage':(context,{Object? args}) =>const AccountsAndSecurityPage(),
    '/VerifyMobilePhoneNumberPage':(context,{Object? args}) =>const VerifyMobilePhoneNumberPage(),
    '/VerifyPhoneInformationPage':(context,{Object? args}) =>const VerifyPhoneInformationPage(),
    '/ChangePasswordPage':(context,{Object? args}) =>const ChangePasswordPage(),
    '/ModifyEmailPage':(context,{Object? args}) =>const ModifyEmailPage(),
    '/RealNameVerifiedPage':(context,{Object? args}) =>const RealNameVerifiedPage(),
    '/FaceVerificationPage':(context,{Object? args}) =>const FaceVerificationPage(),
    '/MessageSettingsPage':(context,{Object? args}) =>const MessageSettingsPage(),
    '/GeneralSettingsPage':(context,{Object? args}) =>const GeneralSettingsPage(),
    '/PrivacySettingPage':(context,{Object? args}) =>const PrivacySettingPage(),
    '/AboutDreamLandPage':(context,{Object? args}) =>const AboutDreamLandPage(),
    '/PersonalCollectionDisplayPage':(context,{Object? args}) =>const PersonalCollectionDisplayPage(),
    '/DestroyAccountPage':(context,{Object? args}) =>const DestroyAccountPage(),
    '/OthersHomepagePage':(context,{Object? args}) =>const OthersHomepagePage(),
    '/GiftObjectPage':(context,{Object? args}) =>const GiftObjectPage(),
    '/ConfirmGiftPage':(context,{Object? args}) =>const ConfirmGiftPage(),
    '/ReceiveAGiftPage':(context,{Object? args}) =>const ReceiveAGiftPage(),
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