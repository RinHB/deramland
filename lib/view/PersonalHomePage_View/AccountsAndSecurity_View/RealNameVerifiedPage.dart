import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/ButtonCollection.dart';
import '../../../tool/InputBox.dart';
class RealNameVerifiedPage extends StatefulWidget {
  final String? phone;
  const RealNameVerifiedPage({Key? key,this.phone}) : super(key: key);
  @override
  State<RealNameVerifiedPage> createState() => _RealNameVerifiedPageState();
}

class _RealNameVerifiedPageState extends State<RealNameVerifiedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('账号与安全'),
      ),
      body: Container(
        width: double.maxFinite,
        color: ColorTable.deepPurple,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('填写实名人认证信息',style: TextStyle(color: ColorTable.white,fontSize: 20.sp)),
                  const SizedBox(height: 5),
                  Text('填写实名信息须与手机号持有人相符，当前登录手机号：${widget.phone}',style: TextStyle(color: ColorTable.white,fontSize: 16.sp))
                ],
              ),
            ),
            inputBox('输入姓名',ColorTable.white,ColorTable.tipColor),
            inputBox('输入身份证号',ColorTable.white,ColorTable.tipColor),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(width: 20),
                Image.asset('assets/images/ParesonalHome/SecurityIcon.png',width: 15,height: 15,),
                Text('信息安全保障中，信息仅用于身份确认',style: TextStyle(color: ColorTable.tipColor),)
              ],
            ),
            gradientButtons(
                '人脸识别认证',
                const Color(0xFFFF0860),
                const Color(0xFF333773),
                    () {Navigator.pushNamed(context, '/FaceVerificationPage');}
            ),
          ],
        ),
      ),
    );
  }
}
