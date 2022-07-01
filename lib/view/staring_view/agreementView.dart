import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../tool/Routers.dart';

class AgreementView extends StatelessWidget {
  AgreementView({Key? key}) : super(key: key);
  Routers routers = Routers();

  agreement() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('agreement', true);
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Container(
        color: const Color(0xFF0F122A),
        child: Center(
          child: AlertDialog(
            buttonPadding: EdgeInsets.zero,
            title: const Center(child: Text('温 馨 提 示')),
            content: const Text(
                '亲爱的用户，欢迎您来到Dream Land APP,根据国家 法律法规要求，您在使用应用前仔细阅读并同意 《使用协议》和《隐私协议》\n\n关于协议里的主要内容，我们在此向您说明：\n 1为了您可以正常使用功能，我们向您申请相册权限、地理位置权限等。\n2您可以在相关页面访问、更正、删除您的个人信息 并管理您的权利。\n3.您提供的所有信息，我们仅用于向你提供更好的服务，未经您的许可，我们不会将您的信息透露给第三方。'),
            actions: [
              Flex(
                direction:Axis.horizontal,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        debugPrint('关闭app');
                        exit(0);
                      },
                      child: const Text('不同意(将退出app)',
                          style: TextStyle(
                            color: Colors.black45,
                          )
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color:Colors.pinkAccent ,
                      child: TextButton(
                        onPressed: ()  {
                          agreement();
                          Navigator.popAndPushNamed(context, '/PasswordLogin');
                        },
                        child: const Text('我以阅读并同意',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}