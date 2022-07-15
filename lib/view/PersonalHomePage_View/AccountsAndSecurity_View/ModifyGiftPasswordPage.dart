import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';
import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';
import '../../../tool/InputBox.dart';

class ModifyGiftPasswordPage extends StatefulWidget {
  final String? phone;
  const ModifyGiftPasswordPage({Key? key,this.phone}) : super(key: key);

  @override
  State<ModifyGiftPasswordPage> createState() => _ModifyGiftPasswordPageState();
}

class _ModifyGiftPasswordPageState extends State<ModifyGiftPasswordPage> {
  int index=0;
  late Timer timer;
  final Duration duration = const Duration(seconds: 1);
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
    if(index==0){
      timer.cancel();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('修改密码'),
      ),
      body:  Container(
        color: ColorTable.deepPurple,
        width: double.maxFinite,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorTable.boxBackGroundPurple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        child: changePasswordInputBox(
                          '请输入转赠密码',
                          textVisible: true,
                          phoneSelectBox: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.black45,
                            ),
                            child: Text('密码',style: TextStyle(color: ColorTable.white),),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        child: changePasswordInputBox(
                          '请再次输入转赠密码',
                          textVisible: true,
                          phoneSelectBox: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.black45,
                            ),
                            child: Container(margin: const EdgeInsets.only(right: 5),child: Text('确认密码',style: TextStyle(color: ColorTable.white),)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: personalInformationListFigure(
                            '手机号',
                            Text(
                              '${widget.phone}',
                              style: TextStyle(color: ColorTable.tipColor),
                            ),
                            color: ColorTable.tipColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 312.w,
                              height: 30.h,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: ColorTable.white),
                                decoration: InputDecoration(
                                  hintText: '请输入验证码',
                                  hintStyle: TextStyle(color: ColorTable.tipColor,fontSize: 14),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorTable.tipColor
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
                      const SizedBox(height: 25)
                    ],
                  ),
                )),
            gradientButtons(
                '确认修改转赠密码',
                const Color(0xFFFF0860),
                const Color(0xFF333773),
                    () {debugPrint('修改密码');}
            ),
          ],
        ),
      ),
    );
  }
}
