import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingCommodityPage extends StatefulWidget {
  const BookingCommodityPage({Key? key}) : super(key: key);

  @override
  State<BookingCommodityPage> createState() => _BookingCommodityPageState();
}

class _BookingCommodityPageState extends State<BookingCommodityPage> {
  //订阅
  bool subscribeState = false;
  //预约
  bool makeAnAppointmentState=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0F122A),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('发售计划',
                    style: TextStyle(
                        color: const Color(0xffFEAA47), fontSize: 20.sp)),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        safeSetState(() {
                          subscribeState = !subscribeState;
                        });
                      },
                      child: subscribeState ? Container(
                        height: 25.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 1,
                                color: const Color(0xffffffff))),
                        child: const Center(
                            child: Text(
                              '已订阅',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                          : Container(
                        height: 25.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xFFFF0860),
                              Color(0xFF333773)
                            ]), // 渐变色
                            borderRadius: BorderRadius.circular(25)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent),
                              elevation: MaterialStateProperty.all(0),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(25))),
                              backgroundColor:
                              MaterialStateProperty.all(
                                  Colors.transparent)),
                          onPressed: () {
                            safeSetState(() {
                              subscribeState = !subscribeState;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 30.h,
                            child: Text(
                              '订阅',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xFFFF0860),
                            Color(0xFF333773)
                          ]), // 渐变色
                          borderRadius: BorderRadius.circular(25)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.transparent),
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                            backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 30.h,
                          child: Text(
                            '分享',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15.sp),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 330.w,
                decoration: BoxDecoration(
                    color: const Color(0xff201735),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '7月28号',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      '10:00',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Flex(
                        direction: Axis.horizontal,
                        children: [
                          Image.asset(
                            'assets/images/ParesonalHome/test.png',
                            height: 100.h,
                            width: 100.w,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: 200.w,
                            height: 105.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/homePage/openToBookingBackGround.png'),
                                    fit: BoxFit.cover)),
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '克鲁鲁',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19.sp),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.white24),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 50.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  gradient:
                                                      const LinearGradient(
                                                          colors: [
                                                        Color(0xffFEDDB6),
                                                        Color(0xffFFE3C0),
                                                        Color(0xffF5CC9A)
                                                      ])),
                                              child: const Center(
                                                  child: Text('限量版')),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text('1000份'),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.white24),
                                        child: const Text('第三始祖'),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('￥29.00',
                                          style: TextStyle(
                                              color: const Color(0xffFF0860),
                                              fontSize: 20.sp)),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context, '/BookingCommodityDetailedPage');
                                        },
                                        child: makeAnAppointmentState ? Container(
                                          height: 25.h,
                                          width: 85.w,
                                          decoration: BoxDecoration(
                                              gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0xFFFF0860),
                                                    Color(0xFF333773)
                                                  ]), // 渐变色
                                              borderRadius: BorderRadius.circular(7)),
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                overlayColor: MaterialStateProperty.all(Colors.transparent),
                                                elevation: MaterialStateProperty.all(0),
                                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                                                backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                                            onPressed: (){
                                              safeSetState((){
                                                safeSetState(()=>makeAnAppointmentState = !makeAnAppointmentState);
                                              });},
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: const Text(
                                                '我要预约',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ):
                                        Container(
                                          height: 25.h,
                                          width: 85.w,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff77789C),
                                            borderRadius: BorderRadius.circular(7),),
                                          child: const Center(
                                              child: Text(
                                                '已预约',
                                                style: TextStyle(color: Colors.white),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
