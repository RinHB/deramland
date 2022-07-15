import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/ButtonCollection.dart';
import '../../../tool/InputBox.dart';
import 'SmsVerificationPage.dart';

class VerifyMobilePhoneNumberPage extends StatefulWidget {
  final String? phone;
  const VerifyMobilePhoneNumberPage({Key? key,this.phone}) : super(key: key);

  @override
  State<VerifyMobilePhoneNumberPage> createState() => _VerifyMobilePhoneNumberPageState();
}

class _VerifyMobilePhoneNumberPageState extends State<VerifyMobilePhoneNumberPage> {
  late TextEditingController phone;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phone = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('账号与安全', style: TextStyle(color: ColorTable.white)),
      ),
      body: Container(
        width: double.maxFinite,
        color: ColorTable.deepPurple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
            Container(margin: const EdgeInsets.only(left: 20),child: Text('重新核验手机号', style: TextStyle(color: ColorTable.white,fontSize: 20.sp))),
            const SizedBox(height: 5),
            Container(margin: const EdgeInsets.only(left: 20),child: Text('请核验已绑定的手机号，以便更换新号码', style: TextStyle(color: ColorTable.tipColor))),
            SizedBox(height: 70.h),
            inputBox('请输入手机号',ColorTable.tipColor,ColorTable.white,phoneInput: phone),
            SizedBox(height: 70.h),
            gradientButtons(
                '发送短信验证码',
                const Color(0xFFFF0860),
                const Color(0xFF333773),
                    () {
                      RegExp reg = RegExp(r'^\d{11}$');
                      if (reg.hasMatch(phone.text)) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SmsVerificationPage(
                                  phone: phone.text,
                                )));
                      }else{
                        debugPrint('为空${phone.text}');
                      }
                    }
            ),
          ],
        ),
      ),
    );
  }
}
