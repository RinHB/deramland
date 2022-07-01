import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  padding: const EdgeInsets.only(left: 20),
                  child: phoneInputBox(
                    phoneSelectBox: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.black45,
                      ),
                      child: DropdownButton(
                        value: dropdownValue,
                        icon: Image.asset(
                          'assets/images/log/drop-down arrow.png',
                          height: 10.h,
                          width: 10.w,
                        ),
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
                    ),
                    phoneInput: phone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/PasswordLogin');
                        },
                        child: const Text('密码登录',
                            style: TextStyle(color: Colors.pinkAccent)),
                      ),
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
                      debugPrint('未阅读协议');
                    }
                  }else{
                    debugPrint('输入手机号');
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
                underButton(context),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
