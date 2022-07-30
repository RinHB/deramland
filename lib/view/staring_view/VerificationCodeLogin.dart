import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../tool/InputBox.dart';
import '../../tool/ButtonCollection.dart';
import 'package:flutter/material.dart';

import '../../tool/AccordingTheInformation.dart';
import 'inputVerificationCode.dart';

class VerificationCodeLogin extends StatefulWidget {
  const VerificationCodeLogin({Key? key}) : super(key: key);

  @override
  State<VerificationCodeLogin> createState() => _VerificationCodeLoginState();
}

class _VerificationCodeLoginState extends State<VerificationCodeLogin> {
  String dropdownValue = '+86';
  bool selected = false;
  late TextEditingController phone;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode blankNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phone = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/log/background.png'))),
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
                  padding: const EdgeInsets.only(right: 10),
                  child: inputBox('请输入手机号',Colors.white,Colors.white,phoneInput: phone,textInputType: TextInputType.phone),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const [
                      Text('未注册的手机号通过验证将自动注册',style: TextStyle(color: Color(0xff77789C)),),
                    ],
                  ),
                ),
                gradientButtons(
                    '获取验证码', const Color(0xFFFF0860), const Color(0xFF333773),
                    () {
                  RegExp reg = RegExp(r'^\d{11}$');
                  if (reg.hasMatch(phone.text)) {
                    if (selected) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputVerificationCode(
                                    phone: phone.text,
                                  )));
                    } else {
                      Fluttertoast.showToast(msg: '同意用户协议及政策，才可以登录注册呦');
                    }
                  }else{
                    if(phone.text.isEmpty){
                      Fluttertoast.showToast(msg: '输入手机号');
                    }else{
                      Fluttertoast.showToast(msg: '手机号格式错误');
                    }
                  }
                }),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              selected = !selected;
                            });
                          },
                          icon: selected
                              ? Image.asset(
                                  'assets/images/log/selected.png',
                                  height: 15,
                                )
                              : Image.asset(
                                  'assets/images/log/No selected.png',
                                  height: 15,
                                )),
                    ),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(text: '我已阅读并同意'),
                        TextSpan(
                            text: '用户协议',
                            style: TextStyle(color: Colors.pinkAccent)),
                        TextSpan(text: '和'),
                        TextSpan(
                            text: '隐私政策',
                            style: TextStyle(color: Colors.pinkAccent)),
                      ]),
                    ),
                  ],
                ),
                underButton(context,'密码登录','/PasswordLogin'),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
