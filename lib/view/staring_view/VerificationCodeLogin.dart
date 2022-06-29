import '../../tool/gradientButtons.dart';
import 'package:flutter/material.dart';

import 'inputVerificationCode.dart';

class VerificationCodeLogin extends StatefulWidget {
  const VerificationCodeLogin({Key? key}) : super(key: key);

  @override
  State<VerificationCodeLogin> createState() => _VerificationCodeLoginState();
}

class _VerificationCodeLoginState extends State<VerificationCodeLogin> {
  String dropdownValue = '+86';
  bool selected =false;
  late TextEditingController phone;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode blankNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phone =TextEditingController();
  }
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
                  )
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Image.asset('assets/images/log/3d图.png', width: 200),
                      const Text('欢迎来到DreamLand', style: TextStyle(fontSize: 30, color: Colors.white)),
                      const Text('发现有趣的商品', style: TextStyle(color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                canvasColor: Colors.black45,
                              ),
                              child: DropdownButton(
                                value: dropdownValue,
                                icon: Image.asset('assets/images/log/drop-down arrow.png',height: 15,width: 15,),
                                elevation: 16,
                                style: const TextStyle(color: Colors.white),
                                underline: Container(
                                  height: 1,
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
                            SizedBox(
                                width: 280,
                                height: 31,
                                child: TextFormField(
                                  controller: phone,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(
                                    color: Colors.white
                                  ),
                                  decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white
                                          )
                                      )
                                  ),
                                )
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.popAndPushNamed(context, '/PasswordLogin');
                              },
                              child: const Text('密码登录',style: TextStyle(color: Colors.pinkAccent)),
                            ),
                          ],
                        ),
                      ),
                      gradientButtons(
                          '获取验证码',
                          const Color(0xFFFF0860),
                          const Color(0xFF333773),
                          () {
                            RegExp reg = RegExp(r'^\d{11}$');
                            if(phone.text.isNotEmpty && reg.hasMatch(phone.text)){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>InputVerificationCode(
                                    phone: phone.text,)
                              )
                              );
                            }
                          }
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: IconButton(
                                  onPressed: (){
                                    setState((){
                                      selected =!selected;
                                    });
                                  },
                                  icon: selected?Image.asset('assets/images/log/selected.png',height: 15,):Image.asset('assets/images/log/No selected.png',height: 15,)
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
                      ),
                      Container(
                        color: const Color(0xFF0F122A),
                        height: 150,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed:(){

                                },
                                child: const Text('换个账号',style: TextStyle(color: Colors.white))
                            ),
                            const  Text('|',style: TextStyle(color: Colors.white)),
                            TextButton(
                                onPressed:(){
                                  Navigator.pushNamed(context, '/Registered');
                                },
                                child: const Text('注册   ',style: TextStyle(color: Colors.white))
                            )
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