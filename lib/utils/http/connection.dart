import 'package:flutter/material.dart';
import 'package:flutter_deramland/model/user_model.dart';
import 'package:flutter_deramland/utils/http/http.dart';
import 'package:flutter_deramland/utils/http/http_address.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../entity/VerificationCodeLogin.dart';

class Connection {
  static Future smsVerificationLogin(UserModel userModel,String phone,String smsCode) async{
    final response = await Http.post(
      Url.smsVerificationLogin,
      params: {'phone':phone,'smsCode':smsCode}
    );
    if(response['errCode']==1){
      //转换模型
      final verificationCodeLogins = VerificationCodeLogins.fromJson(response);
      //更新数据
      userModel.update(verificationCodeLogins.data!,true);
    }else{
      Fluttertoast.showToast(msg: '验证码错误');
    }
    return response;
  }
  static Future sendSMSVerificationCode(String phone) async{
    final response = await Http.post(
        Url.sendSMSVerificationCode,
        params: {'phone':phone}
    );
    debugPrint('验证码$response');
  }
}