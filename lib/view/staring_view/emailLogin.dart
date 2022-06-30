import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/InputBox.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        icon: Image.asset('assets/images/log/Returnkey.png',width: 15.w,height: 15.h,color: Colors.black)
                    ),
                ],
              ),
              Image.asset('assets/images/log/emails.png'),
              const SizedBox(height: 20),
              Text('邮 箱 账 户登录', style: TextStyle(fontSize: 25.sp, color: Colors.black)),
              const SizedBox(height: 20),
              inputBox('请输入账户',const Color(0xff999999),const Color(0xf2f0f0f0)),
              inputBox('请输入密码',const Color(0xff999999),const Color(0xf2f0f0f0)),
              Container(
                margin: const EdgeInsets.fromLTRB(30,35, 30, 0),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                  onPressed: (){

                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.h,
                    child: const Text(
                      '授权登录',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}
