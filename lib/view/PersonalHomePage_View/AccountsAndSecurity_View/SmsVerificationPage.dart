import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../tool/ButtonCollection.dart';
class SmsVerificationPage extends StatefulWidget {
  final String? phone;
  const SmsVerificationPage({Key? key,this.phone}) : super(key: key);

  @override
  State<SmsVerificationPage> createState() => _SmsVerificationPageState();
}

class _SmsVerificationPageState extends State<SmsVerificationPage> {
  late Timer timer;
  final Duration duration = const Duration(seconds: 1);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int index = 60;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startCountdown();
  }

  //倒计时方法
  startCountdown() {
    //倒计时时间
    timer = Timer.periodic(duration, (timer) {
      if (index < 1) {
        timer.cancel();
      } else {
        setState(() {
          index -= 1;
        });
      }
    });
  }

  String handleCodeAutoSizeText() {
    if (index > 0) {
      return '重新获取($index)';
    } else {
      return '获取验证码';
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: ColorTable.deepPurple,
              child:Column(
                children: [
                  SizedBox(height: 80.h),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text('输入短信验证码',style: TextStyle(color: Colors.white,fontSize: 21.sp)),
                          const SizedBox(height: 10),
                          Text('短信验证码已发送至${widget.phone}',style: TextStyle(color: ColorTable.tipColor)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(child: PinCodeTextField(
                                appContext: context,
                                length: 5,
                                pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(5),
                                    fieldHeight: 50,
                                    fieldWidth: 50,
                                    activeFillColor: Colors.white,
                                    inactiveColor: Colors.white,
                                    selectedColor: Colors.white
                                ),
                                onChanged: (String value) {

                                },
                                onCompleted: (v) {
                                  if(v=='12345'){
                                    debugPrint('验证成功');
                                    Navigator.pushNamed(context, '/VerifyPhoneInformationPage');
                                  }else{
                                    debugPrint('验证失败');
                                  }
                                },
                                textStyle: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.number,
                              ))
                            ],
                          ),

                        ]
                    ),
                  ),
                  gradientButtons(handleCodeAutoSizeText(),
                      const Color(0xFFFF0860), const Color(0xFF333773), () {
                        if(index==0){
                          index=60;
                          startCountdown();
                        }
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
