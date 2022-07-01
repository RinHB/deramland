import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/AccordingTheInformation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/InputBox.dart';
import '../../tool/ButtonCollection.dart';
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
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/log/background.png')
              )),
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      headFigure(),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: phoneInputBox(
                          phoneSelectBox:Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.black45,
                            ),
                            child: DropdownButton(
                              value: dropdownValue,
                              icon: Image.asset('assets/images/log/drop-down arrow.png',height: 10.h,width: 10.w,),
                              style: const TextStyle(color: Colors.white),
                              underline: Container(
                                height: 0,
                                color: Colors.white,
                              ),
                              items: <String>['One', '+86', 'Free', 'Four']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },

                            ),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: inputBox('请输入密码',Colors.white,Colors.white),
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
                      underButton(context),
                    ],
                  ),
                ),

            ],
          ),
        )
    );
  }
}