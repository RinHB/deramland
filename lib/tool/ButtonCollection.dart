import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 渐变色按钮
Widget gradientButtons(
    String text, Color color, Color colors, VoidCallback voidCallback) {
  return Container(
    margin: const EdgeInsets.fromLTRB(30, 35, 30, 0),
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color, colors]), // 渐变色
        borderRadius: BorderRadius.circular(25)),
    child: ElevatedButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          backgroundColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: voidCallback,
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
  );
}

// 无外边距渐变色按钮
Widget gradientButton(
    String text, Color color, Color colors, VoidCallback voidCallback) {
  return Container(
    margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color, colors]), // 渐变色
        borderRadius: BorderRadius.circular(25)),
    child: ElevatedButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          backgroundColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: voidCallback,
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ),
  );
}

//底部按钮
Widget underButton(BuildContext context,String buttonName,String pushName) {
  return SizedBox(
    height: 150.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF201735),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  height: 190.h,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.only(left: 50),
                            child: Center(
                                child: Text('第三方登录',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17.sp))),
                          )),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                'assets/images/log/cancel.png',
                                height: 13.h,
                              )),
                          const SizedBox(width: 10)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              debugPrint('微信登录');
                            },
                            child: Column(
                              children: [
                                Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Image.asset(
                                        'assets/images/log/Wechat.png')),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('微信',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/EmailLogin');
                            },
                            child: Column(
                              children: [
                                Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Image.asset(
                                        'assets/images/log/email.png')),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('电子邮箱',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text('换个账号', style: TextStyle(color: Colors.white)),
        ),
        const Text('|', style: TextStyle(color: Colors.white)),
        TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, pushName);
            },
            child: Text(buttonName, style: TextStyle(color: Colors.white)))
      ],
    ),
  );
}

//个人主页按钮
Widget personalHomePageButton(String buttonName, GestureTapCallback tap) {
  return InkWell(
      onTap: tap,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(buttonName,
                  style: const TextStyle(color: Colors.white, fontSize: 15))),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
                'assets/images/ParesonalHome/Component_8_Property1_right.png',
                width: 10),
          )
        ],
      ));
}

//设置按钮
Widget mySettingsPageButton(
    String buttonName, GestureTapCallback tap, bool state) {
  return Container(
    margin: EdgeInsets.all(10),
    child: InkWell(
        onTap: tap,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Text(buttonName,
                    style: const TextStyle(color: Colors.white, fontSize: 15))),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: state
                  ? Image.asset('assets/images/ParesonalHome/setOn.png',
                      width: 40.w)
                  : Image.asset(
                      'assets/images/ParesonalHome/setOff.png',
                      width: 40.w,
                    ),
            )
          ],
        )),
  );
}

//提示框
Future tooltipButton(BuildContext context,
    {String title = 'title',
    String content = 'content',
    VoidCallback? onPressed,
    String sure = '是',
    Color color = Colors.white}) {
  return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: color,
          buttonPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Center(
              child: Text(title,
                  style: TextStyle(
                    color: ColorTable.white,
                  ))),
          content: SizedBox(
            height: 30.h,
            child: Center(
              child: Text(content,
                  style: TextStyle(
                    color: ColorTable.white,
                  )),
            ),
          ),
          actions: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                color: ColorTable.tipColor, width: 1),
                            top: BorderSide(
                                color: ColorTable.tipColor, width: 1)),
                      ),
                      child: TextButton(
                        onPressed: onPressed,
                        child: Text(
                          sure,
                          style: TextStyle(color: ColorTable.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10)),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: ColorTable.tipColor, width: 1)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('否',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      });
}

GestureDetector closeTheKeyboard(BuildContext context,{Widget? child}){
  FocusNode blankNode = FocusNode();
  return GestureDetector(
    onTap: (){
      FocusScope.of(context).requestFocus(blankNode);
    },
    child: child,
  );
}
