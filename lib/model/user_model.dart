import 'package:flutter/cupertino.dart';
import '../entity/VerificationCodeLogin.dart';

class UserModel extends ChangeNotifier{
  //用户名字
 String _nickName='';
 //手机号
 String _phone='';
 //头像
 dynamic _avatar;
 //区块链地址
 String _blockAddress='';
 //登录状态
 bool _loginStatus=false;
 //实名状态
 int _realNameFlag=0;
 update(UserBean data,bool status){
    _nickName = data.nickName!;
    _phone = data.phone!.replaceFirst(RegExp(r'\d{6}'), '******', 3);
    _avatar = data.avatar;
    _blockAddress =data.blockAddress!;
    _loginStatus = status;
    _realNameFlag = data.realNameFlag!;
    notifyListeners();
  }
  
  String get nickName =>_nickName;
  String get phone =>_phone;
  dynamic get avatar =>_avatar;
  String get blockAddress => _blockAddress;
  bool get loginStatus =>_loginStatus;
  int get realNameFlag => _realNameFlag;
}