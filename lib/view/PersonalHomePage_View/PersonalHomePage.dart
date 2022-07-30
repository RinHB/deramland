import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../model/user_model.dart';
import '../../tool/ButtonCollection.dart';
import '../../tool/AccordingTheInformation.dart';
import '../staring_view/VerificationCodeLogin.dart';
import 'MySettings_View/MySettingsPage.dart';

class PersonalHomePage extends StatefulWidget {
  const PersonalHomePage({Key? key}) : super(key: key);

  @override
  State<PersonalHomePage> createState() => _PersonalHomePageState();
}

class _PersonalHomePageState extends State<PersonalHomePage> {
  String T = '44sxqsxq4xaxqxq611s61xsaxwcdcwd4645...';
  late Timer _timer;
  bool loginStatus=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    AssetImage('assets/images/ParesonalHome/backgrounds.png'))),
        child: Consumer<UserModel>(
          builder: (_, userModel, Widget? child) {
            return Column(
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {

                        },
                        icon: Image.asset(
                          'assets/images/ParesonalHome/scan.png',
                          height: 25,
                        ))
                  ],
                ),
                userModel.loginStatus
                    ? personalHomeHeadFigure(
                        userModel.nickName,
                        userModel.phone,
                        'assets/images/ParesonalHome/test.png',
                            () {
                          Navigator.pushNamed(
                              context, '/PersonalCollectionDisplayPage');
                        },
                  userModel.loginStatus,
                        qrCodeBusinessCard: () {
                          Navigator.pushNamed(context, '/QrCodePage');
                        },
                )
                    : personalHomeHeadFigure('未登录', '登录后可查看你的数字藏品',
                    'assets/images/ParesonalHome/defaultavatar.png', () {
                      tooltipButton(context,
                          color: ColorTable.deepPurple,
                          title: ' 当前未登录',
                          content: '是否前往登录', onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) =>  const VerificationCodeLogin()), (route) => false);
                          });
                    },  userModel.loginStatus),
                userModel.loginStatus
                    ? Consumer<UserModel>(
                  builder: (_, userModel, Widget? child) {
                    return Row(
                      children: [
                        const SizedBox(width: 20),
                        Text('区块链地址:', style: TextStyle(color: ColorTable.white)),
                        Expanded(
                            child: Text(
                              userModel.blockAddress,
                              style: TextStyle(color: ColorTable.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  operationTipsFigure(context,
                                    title: Column(
                                      children: [
                                        Image.asset('assets/images/ParesonalHome/success.png',width: 30,height: 30,),
                                        Text('复制成功',style: TextStyle(color: ColorTable.white),)
                                      ],
                                    ),
                                  );
                                  Clipboard.setData(ClipboardData(text: userModel.blockAddress));
                                },
                                child: Image.asset(
                                    'assets/images/ParesonalHome/copy.png',
                                    width: 15,
                                    height: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                )
                    : Container(),
                const SizedBox(height: 20),
                userModel.loginStatus?Container(
                  width: 340.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff4B245E), Color(0xff1D0F3F)],
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/MyOrderPage');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/ParesonalHome/MyOrder.png',
                                height: 45),
                            const Text('我的订单', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/CollectionRecordPage');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/images/ParesonalHome/Collection records.png',
                                height: 45),
                            const Text('藏品记录', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/NotificationMessagePage');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/ParesonalHome/MyMessage.png',
                                height: 45),
                            const Text('我的消息', style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                      )
                    ],
                  ),
                ):Container(),
                const SizedBox(height: 15),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff4B245E), Color(0xff1D0F3F)],
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    width: 340.w,
                    child: Column(
                      children: [
                        const SizedBox(height: 25),
                        personalHomePageButton('区块链信息查询', () {
                          Navigator.pushNamed(context, "/BlockChainSelectPage");
                        }),
                        const SizedBox(height: 25),
                        userModel.loginStatus?personalHomePageButton('账号与安全', () {
                          Navigator.pushNamed(context, "/AccountsAndSecurityPage");
                        }):personalHomePageButton('我的设置', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MySettingsPage(
                                    loginStatus:userModel.loginStatus,
                                  )));
                        }),
                        const SizedBox(height: 25),
                        userModel.loginStatus?personalHomePageButton('我的客服', () {
                          Navigator.pushNamed(context, "/CustomerServicePage");
                        }):
                        personalHomePageButton('关于梦境之谷', () {
                          Navigator.pushNamed(context, "/AboutDreamLandPage");
                        }),
                        const SizedBox(height: 25),
                        userModel.loginStatus? personalHomePageButton('我的设置', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MySettingsPage(
                                    loginStatus: userModel.loginStatus,
                                  )));
                        }):Container(),
                        const SizedBox(height: 25),
                        userModel.loginStatus?  personalHomePageButton('关于梦境之谷', () {
                          Navigator.pushNamed(context, "/AboutDreamLandPage");
                        }):Container(),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
    );
  }
}
