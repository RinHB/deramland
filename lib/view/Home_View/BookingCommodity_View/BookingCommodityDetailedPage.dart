import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';

class BookingCommodityDetailedPage extends StatefulWidget {
  const BookingCommodityDetailedPage({Key? key}) : super(key: key);

  @override
  State<BookingCommodityDetailedPage> createState() =>
      _BookingCommodityDetailedPageState();
}

class _BookingCommodityDetailedPageState extends State<BookingCommodityDetailedPage> {
  bool bookingStatus =false;
  int appointmentProcess=1;
  bool alipay=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F122A),
      ),
      body: Container(
        color: const Color(0xff0F122A),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/ParesonalHome/test.png',
              height: 250.h,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/homePage/leftArrow.png',
                      width: 50.w),
                  Column(
                    children: [
                      Text(
                        '嘻嘻',
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
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
                                  height: 17.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xffFEDDB6),
                                        Color(0xffFFE3C0),
                                        Color(0xffF5CC9A)
                                      ])),
                                  child: const Center(child: Text('限量版')),
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
                    ],
                  ),
                  Image.asset('assets/images/homePage/rightArrow.png',
                      width: 50.w),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 100.w, child: splitLineFigure()),
                const Text(
                  '购买即可体验内容',
                  style: TextStyle(color: Color(0xff77789C)),
                ),
                SizedBox(width: 100.w, child: splitLineFigure()),
              ],
            ),
            Container(
              height: 60.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff2B1A3D)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ClipOval(
                      child: Image.asset('assets/images/ParesonalHome/test.png',
                          width: 50, height: 50),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text('嘻嘻', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          const Text('藏品111',
                              style: TextStyle(color: Color(0xff77789C))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.pinkAccent),
                              shape:
                                  MaterialStateProperty.all(const StadiumBorder(
                                      side: BorderSide(
                                //设置 界面效果
                                style: BorderStyle.solid,
                              )))),
                          child: Text('+关注')),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff2B1A3D)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.r,bottom: 10.r,top: 10.r),
                    child: Text(
                      '预约流程',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 50),
                      appointmentProcess==1?processCircleFigure(color: const Color(0xffFF0860)):processCircleFigure(),
                      processLineFigure(),
                      appointmentProcess==2?processCircleFigure(color: const Color(0xffFF0860)):processCircleFigure(),
                      processLineFigure(),
                      appointmentProcess==3?processCircleFigure(color: const Color(0xffFF0860)):processCircleFigure(),
                      processLineFigure(),
                      appointmentProcess==4?processCircleFigure(color: const Color(0xffFF0860)):processCircleFigure(),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      processPromptFigure("开放预约", "07-04", "10:00"),
                      processPromptFigure("预约结束", "07-09", "12:00"),
                      processPromptFigure("盲盒抽签", "07-09", "14:00"),
                      processPromptFigure("开放购买", "07-09", "19:00"),
                    ],
                  ),
                  const SizedBox(height: 5)
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xff2B1A3D)),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Image.asset(
                                'assets/images/ParesonalHome/OrangeLine.png',
                                width: 15,
                                height: 15,
                              ),
                              const Text('藏品详细',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: InkWell(
                            onTap: () {},
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                const Text('藏品详细',
                                    style: TextStyle(color: Colors.white)),
                                Image.asset(
                                  'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    splitLineFigure(),
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(
                          '克鲁鲁·采佩西，'
                          '漫画及改编动画《终结的炽天使》中的角色。'
                          '吸血鬼的上位始祖之一，为第三位始祖。'
                          '吸血鬼第三都市桑古奈姆的支配者，日本吸血鬼的女王，'
                          '曾赐予了濒死百夜米迦尔自己的血而使其成为吸血鬼。',
                          style: TextStyle(color: Color(0xff77789C)),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xff2B1A3D)),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: orderDetailsFigure('创作者', '嘻嘻',
                          color: Colors.white54, colors: Colors.white)),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: orderDetailsFigure('发行方', '终极炽天使',
                          color: Colors.white54, colors: Colors.white)),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: const Text(
                  '购买须知',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: const Text(
                  '数字藏品为虚拟数字藏品，而非实物，仅实名认证为年满14周岁的中国用户购买。数字藏品的版权由发行方或原创者拥有，除另行取得版权拥有者书面同意外，用户不得将数字藏品用于商业用途。本商品一经售出，不支持退换，本 商品源文件不支持本地下载。请勿对数字藏品进行炒作、场外交易、欺诈，或以任何其他非法方式进行使用。',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
          data: ThemeData(
            brightness: Brightness.light,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Container(
            color: const Color(0xff2B1A3D),
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      '¥19.9',
                      style:
                          TextStyle(color: const Color(0xffFF0860), fontSize: 20.sp),
                    )),
                bookingStatus?Container(
                  height: 35.h,
                  margin: const EdgeInsets.only(right: 30),
                  decoration:appointmentProcess==3 || appointmentProcess==4?BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xFFFF0860),
                        Color(0xFF333773)
                      ]), // 渐变色
                      borderRadius: BorderRadius.circular(25)):BoxDecoration(
                      color: const Color(0xff77789C),
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
                      if(appointmentProcess==3){
                        defrayFigure(context, true);
                      }else if(appointmentProcess==4){

                      }
                    },
                    child:appointmentProcess==3?Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      child: Text(
                        '盲盒抽签',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp),
                      ),
                    ):
                    Center(
                      child: Text(
                        '已设置预约提醒',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ):
                appointmentProcess==2?Container(
                  height: 35.h,
                  margin: const EdgeInsets.only(right: 30),
                  decoration: BoxDecoration(
                      color: const Color(0xff77789C),
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

                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40.h,
                      child: Text(
                        '预约结束',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ):
                Container(
                  height: 35.h,
                  margin: const EdgeInsets.only(right: 30),
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
                        bookingStatus=!bookingStatus;
                      });
                    },
                    child: Center(
                      child: Text(
                        '设置提醒预约',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
