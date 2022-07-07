import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 渐变色按钮
Widget gradientButtons(String text,Color color,Color colors,VoidCallback voidCallback) {
  return Container(
    margin: const EdgeInsets.fromLTRB(30,35, 30, 0),
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color,colors]), // 渐变色
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
Widget underButton(BuildContext context){
  return SizedBox(
    height: 150.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor:Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF201735),
                    borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(20),
                        topRight: Radius.circular(20)
                    ),
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
                                            color: Colors.white,
                                            fontSize: 17.sp))),
                              )
                          ),
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
                            onTap: (){
                              debugPrint('微信登录');
                            },
                            child: Column(
                              children: [
                                Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:  BorderRadius.circular(20.0)
                                    ),
                                    child: Image.asset(
                                        'assets/images/log/Wechat.png')),
                                const SizedBox(height: 10,),
                                const Text('微信',
                                    style: TextStyle(
                                        color: Colors.white))
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/EmailLogin');
                            },
                            child: Column(
                              children: [
                                Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:  BorderRadius.circular(20.0)
                                    ),
                                    child: Image.asset(
                                        'assets/images/log/email.png')),
                                const SizedBox(height: 10,),
                                const Text('电子邮箱',
                                    style: TextStyle(
                                        color: Colors.white))
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
          child: const Text('换个账号',
              style: TextStyle(color: Colors.white)),
        ),
        const Text('|', style: TextStyle(color: Colors.white)),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Registered');
            },
            child: const Text('注册   ',
                style: TextStyle(color: Colors.white)))
      ],
    ),
  );
}

//个人主页按钮
Widget personalHomePageButton(String buttonName,GestureTapCallback tap){
  return InkWell(
      onTap:tap,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(buttonName,
                  style: const TextStyle(color: Colors.white,fontSize: 15))),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
                'assets/images/ParesonalHome/Component_8_Property1_right.png',width: 10),
          )
        ],
      )
  );
}
