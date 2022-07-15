import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';
import '../../../tool/InputBox.dart';
class VerifyPhoneInformationPage extends StatefulWidget {
  const VerifyPhoneInformationPage({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneInformationPage> createState() => _VerifyPhoneInformationPageState();
}

class _VerifyPhoneInformationPageState extends State<VerifyPhoneInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
      ),
      body: Container(
        width: double.maxFinite,
        color: ColorTable.deepPurple,
        child: ListView(

          children: [
            SizedBox(height: 70.h),
            Container(margin: const EdgeInsets.only(left: 20),child: Text('新手机号和实名信息', style: TextStyle(color: ColorTable.white,fontSize: 20.sp))),
            const SizedBox(height: 5),
            Container(margin: const EdgeInsets.only(left: 20),child: Text('请确保手机号拥有者需要与实名信息匹配', style: TextStyle(color: ColorTable.tipColor))),
            SizedBox(height: 40.h),
            inputBox('请输入手机号',ColorTable.tipColor,ColorTable.white),
            inputBox('输入真实姓名',ColorTable.tipColor,ColorTable.white),
            inputBox('输入身份证号',ColorTable.tipColor,ColorTable.white),
            Row(
              children: [
                const SizedBox(width: 20),
                Image.asset('assets/images/ParesonalHome/SecurityIcon.png',width: 15,height: 15,),
                Text('信息安全保障中，信息仅用于身份确认',style: TextStyle(color: ColorTable.tipColor),)
              ],
            ),
            SizedBox(height: 60.h),
            gradientButtons(
                '发送短信验证码',
                const Color(0xFFFF0860),
                const Color(0xFF333773),
                    () {

                }
            ),
          ],
        ),
      ),
    );
  }
}
