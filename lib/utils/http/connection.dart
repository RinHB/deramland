import 'package:flutter/material.dart';
import 'package:flutter_deramland/utils/http/http.dart';
import 'package:flutter_deramland/utils/http/http_address.dart';
import '../../entity/VerificationCodeLogin.dart';

class Connection{
  static Future smsVerificationLogin(String phone,String smsCode) async{
    final response = await Http.post(
      Url.smsVerificationLogin,
      params: {'phone':phone,'smsCode':smsCode}
    );
    if(response['errCode']==1){
      final verificationCodeLogins = VerificationCodeLogins.fromJson(response);
      return verificationCodeLogins;
    }
  }
  static Future sendSMSVerificationCode(String phone) async{
    final response = await Http.post(
        Url.sendSMSVerificationCode,
        params: {'phone':phone}
    );
    debugPrint('验证码$response');
  }
}