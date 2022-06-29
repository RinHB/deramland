import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/InputBox.dart';
import '../../tool/gradientButtons.dart';
class PasswordLogin extends StatefulWidget {
  const PasswordLogin({Key? key}) : super(key: key);

  @override
  State<PasswordLogin> createState() => _PasswordLoginState();
}

class _PasswordLoginState extends State<PasswordLogin> {
  String dropdownValue = '+86';
  bool selected =false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/log/background.png')
                    )),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Image.asset('assets/images/log/3d图.png', width: 180.w),
                      Text('欢迎来到DreamLand', style: TextStyle(fontSize: 30.sp, color: Colors.white)),
                      const Text('发现有趣的商品', style: TextStyle(color: Colors.white)),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: PhoneInputBox(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          width: 310.w,
                          height: 31.h,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.popAndPushNamed(context, '/VerificationCodeLogin');
                              },
                              child: const Text('验证码登录',style: TextStyle(color: Colors.pinkAccent)),
                            ),
                          ],
                        ),
                      ),
                      gradientButtons(
                          '登录',
                          const Color(0xFFFF0860),
                          const Color(0xFF333773),
                              () {debugPrint('登录');}
                      ),
                      Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 35),
                              child: IconButton(
                                  onPressed: (){
                                    setState((){
                                      selected =!selected;
                                    });
                                  },
                                  icon: selected?Image.asset('assets/images/log/selected.png',height: 15.h,):Image.asset('assets/images/log/No selected.png',height: 15.h,)
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                  children: [
                                    TextSpan(text: '我已阅读并同意'),
                                    TextSpan(text: '用户协议',style: TextStyle(color: Colors.pinkAccent)),
                                    TextSpan(text: '和'),
                                    TextSpan(text: '隐私政策',style: TextStyle(color: Colors.pinkAccent)),
                                  ]
                              ),
                            )
                          ],
                        ),
                      Container(
                        color: const Color(0xFF0F122A),
                        height: 130.h,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('换个账号',style:TextStyle(color: Colors.white)),
                            Text('|',style:TextStyle(color: Colors.white)),
                            Text('注册',style:TextStyle(color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}