import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_deramland/utils/http/connection.dart';
import 'package:flutter_deramland/view/Tab/tabs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import '../../entity/VerificationCodeLogin.dart';
import '../../model/user_model.dart';
import '../../tool/ButtonCollection.dart';

class InputVerificationCode extends StatefulWidget {
  final String? phone;
  const InputVerificationCode({Key? key,this.phone}) : super(key: key);
  @override
  State<InputVerificationCode> createState() => _InputVerificationCodeState();
}

class _InputVerificationCodeState extends State<InputVerificationCode> {
  late Timer timer;
  final Duration duration = const Duration(seconds: 1);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int index = 60;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startCountdown();
    Connection.sendSMSVerificationCode(widget.phone!);
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
    final navigator = Navigator.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/log/background.png'))),
              child:Column(
                  children: [
                    const SizedBox(height: 40),
                     Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 90),
                            child: IconButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                icon: Image.asset('assets/images/log/Returnkey.png',width: 20.w,height: 20.h)
                            ),
                          ),
                          Expanded(child: Image.asset('assets/images/log/test.gif', width: 200.w,height: 200.h,)),
                          const SizedBox(width: 25,)
                        ],
                      ),
                    const Text('欢迎来到DreamLand',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    const Text('发现有趣的商品',
                        style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 20),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Text('验证码',style: TextStyle(color: Colors.white)),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                Expanded(child: PinCodeTextField(
                                  appContext: context,
                                  length: 4,
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(5),
                                    fieldHeight: 60,
                                    fieldWidth: 60,
                                    activeFillColor: Colors.white,
                                    inactiveColor: Colors.white,
                                    selectedColor: Colors.white
                                  ),
                                  onChanged: (String value) {

                                  },
                                  onCompleted: (v) async{
                                    UserModel userModel = Provider.of<UserModel>(context, listen: false);
                                    final res=await Connection.smsVerificationLogin(userModel,widget.phone!,v);
                                    if(res['errCode']==1){
                                      navigator.pushAndRemoveUntil(
                                          MaterialPageRoute(builder: (context) =>const Tabs()),
                                              (route) => false);
                                    }
                                  },
                                  textStyle: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.number,
                                ))
                              ],
                            ),
                            Center(
                              child:  Text('已发送验证码至${widget.phone}',style: TextStyle(color: Colors.white)),
                            )
                          ]
                      ),
                    ),
                    gradientButtons(handleCodeAutoSizeText(),
                        const Color(0xFFFF0860), const Color(0xFF333773), () {
                          if(index==0){
                            index=60;
                            startCountdown();
                            Connection.sendSMSVerificationCode(widget.phone!);
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
