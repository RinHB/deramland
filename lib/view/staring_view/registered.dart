import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../tool/InputBox.dart';
import '../../tool/gradientButtons.dart';

class Registered extends StatefulWidget {
  const Registered({Key? key}) : super(key: key);

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int index=0;
  late Timer timer;
  final Duration duration = const Duration(seconds: 1);
  String dropdownValue = '+86';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/log/background.png'))),
            child: Form(
              key: _formKey,
              child: Column(
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
                            icon: Image.asset('assets/images/log/Returnkey.png',width: 15.w,height: 15.h)
                        ),
                      ),
                      Expanded(child: Image.asset('assets/images/log/3d图.png', width: 180.w,height: 180.h,)),
                      const SizedBox(width: 25,)
                    ],
                  ),
                  Text('欢迎来到DreamLand',
                      style: TextStyle(fontSize: 30.sp, color: Colors.white)),
                  const Text('发现有趣的商品',
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: PhoneInputBox(),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 312.w,
                          height: 35.h,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white
                                  )
                              ),
                              suffixIcon: TextButton(
                                  onPressed: (){
                                    if(index==0){
                                      index=60;
                                      startCountdown();
                                    }
                                  },
                                  child: Text(handleCodeAutoSizeText(),style: const TextStyle(color: Colors.pinkAccent),)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  inputBox('请输入验证码'),
                  inputBox('请输入邮箱（用于藏品接收）'),
                  inputBox('请输入登录密码'),
                  inputBox('请确认登录密码'),
                  inputBox('请输入邀请（非必填）'),
                  gradientButtons('立即注册',
                      const Color(0xFFFF0860),
                      const Color(0xFF333773),
                          () {

                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
