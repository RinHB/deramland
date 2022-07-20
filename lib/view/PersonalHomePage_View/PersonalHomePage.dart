import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/ButtonCollection.dart';
import '../../tool/AccordingTheInformation.dart';
import '../staring_view/passwordLogin.dart';

class PersonalHomePage extends StatefulWidget {
  const PersonalHomePage({Key? key}) : super(key: key);

  @override
  State<PersonalHomePage> createState() => _PersonalHomePageState();
}

class _PersonalHomePageState extends State<PersonalHomePage> {
  String T = '44sxqsxq4xaxqxq611s61xsaxwcdcwd4645...';
  bool loginStatus = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  AssetImage('assets/images/ParesonalHome/backgrounds.png'))),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    safeSetState(() => loginStatus = !loginStatus);
                  },
                  icon: Image.asset(
                    'assets/images/ParesonalHome/scan.png',
                    height: 25,
                  ))
            ],
          ),
          loginStatus
              ? personalHomeHeadFigure(
                  '测试',
                  '测试',
                  'assets/images/ParesonalHome/test.png',
                  () {
                    Navigator.pushNamed(
                        context, '/PersonalCollectionDisplayPage');
                  },
                  loginStatus,
                  qrCodeBusinessCard: () {
                    Navigator.pushNamed(context, '/QrCodePage');
                  })
              : personalHomeHeadFigure('未登录', '登录后可查看你的数字藏品',
                  'assets/images/ParesonalHome/defaultavatar.png', () {
                  tooltipButton(context,
                      color: ColorTable.deepPurple,
                      title: ' 当前未登录',
                      content: '是否前往登录', onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) =>  const PasswordLogin()),
                        (route) => false);
                  });
                }, loginStatus),
          loginStatus
              ? Row(
                  children: [
                    const SizedBox(width: 20),
                    Text('区块链地址:', style: TextStyle(color: ColorTable.white)),
                    SizedBox(
                        width: 230.w,
                        child: Text(
                          T,
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
                              Clipboard.setData(ClipboardData(text: T));
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
                )
              : Container(),
          const SizedBox(height: 20),
          loginStatus?Container(
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
                      Image.asset('assets/images/ParesonalHome/我的订单.png',
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
                      Image.asset('assets/images/ParesonalHome/通知消息.png',
                          height: 45),
                      const Text('通知消息', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0,
                )
              ],
            ),
          ):
          Stack(
            children: [
              Container(
                height: 80.h,
                margin: const EdgeInsets.only(left: 10,right: 10),
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
                          Image.asset('assets/images/ParesonalHome/我的订单.png',
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
                          Image.asset('assets/images/ParesonalHome/通知消息.png',
                              height: 45),
                          const Text('通知消息', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    )
                  ],
                ),
              ),
              Container(
                height: 80.h,
                margin: const EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorTable.bokeh
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/ParesonalHome/Lock.png',width: 20,height: 20),
                        Text('登录后可查看',style: TextStyle(color: ColorTable.white),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          loginStatus?Expanded(
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
                  personalHomePageButton('账号与安全', () {
                    Navigator.pushNamed(context, "/AccountsAndSecurityPage");
                  }),
                  const SizedBox(height: 25),
                  personalHomePageButton('我的客服', () {}),
                  const SizedBox(height: 25),
                  personalHomePageButton('我的设置', () {
                    Navigator.pushNamed(context, "/MySettingsPage");
                  }),
                  const SizedBox(height: 25),
                  personalHomePageButton('关于Dream  Land', () {
                    Navigator.pushNamed(context, "/AboutDreamLandPage");
                  }),
                  const SizedBox(height: 25),
                  personalHomePageButton('分享Dream  Land', () {}),
                ],
              ),
            ),
          ):
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10,right: 10),
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
                      personalHomePageButton('账号与安全', () {
                        Navigator.pushNamed(context, "/AccountsAndSecurityPage");
                      }),
                      const SizedBox(height: 25),
                      personalHomePageButton('我的客服', () {}),
                      const SizedBox(height: 25),
                      personalHomePageButton('我的设置', () {
                        Navigator.pushNamed(context, "/MySettingsPage");
                      }),
                      const SizedBox(height: 25),
                      personalHomePageButton('关于Dream  Land', () {
                        Navigator.pushNamed(context, "/AboutDreamLandPage");
                      }),
                      const SizedBox(height: 25),
                      personalHomePageButton('分享Dream  Land', () {}),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: ColorTable.bokeh
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/ParesonalHome/Lock.png',width: 40,height: 40),
                          Text('登录后可查看',style: TextStyle(color: ColorTable.white),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
