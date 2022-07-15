import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/ButtonCollection.dart';
import '../../tool/AccordingTheInformation.dart';

class PersonalHomePage extends StatefulWidget {
  const PersonalHomePage({Key? key}) : super(key: key);

  @override
  State<PersonalHomePage> createState() => _PersonalHomePageState();
}

class _PersonalHomePageState extends State<PersonalHomePage> {
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
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/ParesonalHome/scan.png',
                    height: 25,
                  ))
            ],
          ),
          personalHomeHeadFigure('未登录', '登录后可查看你的数字藏品',
              'assets/images/ParesonalHome/defaultavatar.png', () {
            Navigator.pushNamed(context, '/PersonalInformationPage');
          }),
          const SizedBox(height: 20),
          Container(
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
          ),
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
                  personalHomePageButton('账号与安全', () {
                    Navigator.pushNamed(context, "/AccountsAndSecurityPage");
                  }),
                  const SizedBox(height: 25),
                  personalHomePageButton('我的客服', () {}),
                  const SizedBox(height: 25),
                  personalHomePageButton('我的设置', () {}),
                  const SizedBox(height: 25),
                  personalHomePageButton('关于Dream  Land', () {}),
                  const SizedBox(height: 25),
                  personalHomePageButton('分享Dream  Land', () {}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
