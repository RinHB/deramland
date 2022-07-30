import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/ButtonCollection.dart';

class DestroyAccountPage extends StatefulWidget {
  const DestroyAccountPage({Key? key}) : super(key: key);

  @override
  State<DestroyAccountPage> createState() => _DestroyAccountPageState();
}

class _DestroyAccountPageState extends State<DestroyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: const Text('注销账号'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        child: Column(
          children: [
            Image.asset(
              'assets/images/ParesonalHome/closePrompt.png',
              width: 100,
              height: 100,
            ),
            Center(
              child: Text(
                '申请注销梦境之谷账号',
                style: TextStyle(color: Colors.white, fontSize: 23.sp),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                '注意，注销账号后以下信息将被清空且无法找回',
                style: TextStyle(color: ColorTable.tipColor, fontSize: 12.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorTable.boxBackGroundPurple),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '· 藏品，账户信息',
                      style: TextStyle(color: ColorTable.tipColor),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '· 业务订单和交易信息',
                      style: TextStyle(color: ColorTable.tipColor),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '· 个人资料,实名认证等身份信息',
                      style: TextStyle(color: ColorTable.tipColor),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '· 您在使用Dream Land服务时留存的其他信息',
                      style: TextStyle(color: ColorTable.tipColor),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorTable.boxBackGroundPurple),
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '请确保所有交易已完结且无纠纷, 账号删除后拥有的藏品将视作自动放弃',
                      style: TextStyle(color: ColorTable.tipColor),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container(
              margin: const EdgeInsets.only(bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('点击[下一步]即代表您已经同意',style: TextStyle(color: ColorTable.tipColor),),
                      TextButton(onPressed: (){}, child: const Text('用户注销协议',style: TextStyle(color: const Color(0xFFFF0860)),))
                    ],
                  ),
                  gradientButton('下一步', const Color(0xFFFF0860),
                      const Color(0xFF333773), () {})
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
