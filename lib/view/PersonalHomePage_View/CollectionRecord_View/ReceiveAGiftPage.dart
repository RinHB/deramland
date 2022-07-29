import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';
import '../../../tool/ButtonCollection.dart';
class ReceiveAGiftPage extends StatefulWidget {
  const ReceiveAGiftPage({Key? key}) : super(key: key);

  @override
  State<ReceiveAGiftPage> createState() => _ReceiveAGiftPageState();
}

class _ReceiveAGiftPageState extends State<ReceiveAGiftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
      ),
      body: Container(
        color: ColorTable.deepPurple,
        child: Column(
          children: [
            Image.asset('assets/images/ParesonalHome/Gift.png',width: 100,height:70,),
            const SizedBox(height: 5,),
            Text('转增中',style: TextStyle(color: ColorTable.white,fontSize: 18.sp),),
            const SizedBox(height: 5,),
            Text('07-26  12:04  前对方未领取，将退还给你',style: TextStyle(color: ColorTable.tipColor,),),
            Container(
              margin: const EdgeInsets.all(15),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/images/ParesonalHome/test.png',
                    height: 110.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    width: 230.w,
                    height: 110.h,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/ParesonalHome/giftBackground.png'),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.only(left: 15,top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '克鲁鲁',
                            style: TextStyle(
                                color: Colors.white, fontSize: 19.sp),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFFFEDDB6),
                                  Color(0xffFFE3C0),
                                  Color(0xffF5CC9A)
                                ]),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text('AD57486 #05105 | 10000'),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            '克鲁鲁',
                            style: TextStyle(
                                color: ColorTable.tipColor, fontSize: 15.sp),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            '克鲁鲁',
                            style: TextStyle(
                                color: ColorTable.tipColor, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20,right: 25,top: 10),
                child: orderDetailsFigure('赠送内容', '嘻嘻',
                    color: Color(0xff77789C), colors: Colors.white)),
            Container(
                margin: const EdgeInsets.only(left: 20,right: 25,top: 10),
                child: orderDetailsFigure('转赠时间', '2022-07-25  12:04:53',
                    color: Color(0xff77789C), colors: Colors.white)),
            Container(
                margin: const EdgeInsets.only(left: 20,right: 25,top: 10),
                child: orderDetailsFigure('订单号', '20220725054687541284',
                    color: Color(0xff77789C), colors: Colors.white)),
            Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      gradientButtons('完成', const Color(0xFFFF0860),
                          const Color(0xFF333773), () {

                          }),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
