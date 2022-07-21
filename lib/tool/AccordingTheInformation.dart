import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//头部显示
Widget headFigure() {
  return Column(
    children: [
      const SizedBox(height: 40),
      Image.asset('assets/images/log/test.gif', width: 175.w),
      Text('欢迎来到DreamLand',
          style: TextStyle(fontSize: 25.sp, color: Colors.white)),
      const Text('发现有趣的商品', style: TextStyle(color: Colors.white)),
    ],
  );
}

//个人主页头像显示
Widget personalHomeHeadFigure(String loginName, String phone, String image,
    VoidCallback voidCallback, bool state,
    {VoidCallback? qrCodeBusinessCard}) {
  return Row(
    children: [
      const SizedBox(width: 20),
      SizedBox(
        width: 70,
        height: 70,
        child: IconButton(
          onPressed: voidCallback,
          icon: ClipOval(child: Image.asset(image)),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(loginName,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 5),
            Text(phone, style: const TextStyle(color: Colors.white))
          ],
        ),
      ),
      state
          ? InkWell(
              onTap: qrCodeBusinessCard,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ParesonalHome/QrCode.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            )
          : Container()
    ],
  );
}

//分割线显示
Widget splitLineFigure() {
  return Container(
    margin: const EdgeInsets.only(right: 10, left: 10),
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Color(0xffF0F0F0)))),
  );
}

//个人信息显示
Widget personalInformationListFigure(
    String personalInformation, Widget according,
    {Color color = Colors.white}) {
  return Column(
    children: [
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              personalInformation,
              style: const TextStyle(color: Colors.white),
            ),
            according,
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        margin: const EdgeInsets.only(right: 12, left: 20),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: color))),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}

//主题页选择
Widget switchThemeFigure(String imageName, GestureTapCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image:
              DecorationImage(image: AssetImage(imageName), fit: BoxFit.cover)),
    ),
  );
}

//订单详细显示
Widget orderDetailsFigure(String firstColumn, String secondColumn,
    {Color colors = Colors.white54, Color color = Colors.white}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(firstColumn, style: TextStyle(color: color)),
      Text(
        secondColumn,
        style: TextStyle(color: colors),
        maxLines: 2,
      ),
    ],
  );
}

//已经支付订单详细显示
Widget alreadyPaymentDetailsFigure() {
  return Container(
    color: const Color(0xff0F122A),
    child: Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Image.asset('assets/images/ParesonalHome/PayForSuccess.png',
              width: 100, height: 70),
          const Center(
              child: Text(
            '交易成功',
            style: TextStyle(color: Colors.white),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Container(
              height: 300.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFF2B1A3D),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/ParesonalHome/test.png'))),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('克鲁鲁·采佩西',
                                    style: TextStyle(color: Colors.white)),
                                const SizedBox(height: 5),
                                Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFFFEDDB6),
                                        Color(0xffFFE3C0),
                                        Color(0xffF5CC9A)
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: const Text(
                                    '吸血鬼的上位始祖之一，为第三位始祖。吸血鬼第三都市桑古奈姆的支配者，日本吸血鬼的女王',
                                    style: TextStyle(color: Colors.black),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Text(
                                  '产地：日本',
                                  style: TextStyle(color: Colors.white),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        orderDetailsFigure('实付款', '59.90',
                            colors: const Color(0xFFFF0860)),
                        const SizedBox(height: 10),
                        orderDetailsFigure('交易数量', '1'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('创建时间', '2022-02-28  15:30:25'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('付款信息', '2022-02-28  15:31:01'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('订单编号', '298335568635323558686'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('付款方式', '支付宝'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('支付流水号', '29565656565555656249795'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//等待付款订单详细显示
Widget waitingForPaymentFigure() {
  return Container(
    color: const Color(0xff0F122A),
    child: Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Image.asset('assets/images/ParesonalHome/time.png',
              width: 60, height: 70),
          const Center(
              child: Text(
            '等待付款',
            style: TextStyle(color: Colors.white),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Container(
              height: 230.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFF2B1A3D),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/ParesonalHome/test.png'))),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('克鲁鲁·采佩西',
                                    style: TextStyle(color: Colors.white)),
                                const SizedBox(height: 5),
                                Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFFFEDDB6),
                                        Color(0xffFFE3C0),
                                        Color(0xffF5CC9A)
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: const Text(
                                    '吸血鬼的上位始祖之一，为第三位始祖。吸血鬼第三都市桑古奈姆的支配者，日本吸血鬼的女王',
                                    style: TextStyle(color: Colors.black),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Text(
                                  '产地：日本',
                                  style: TextStyle(color: Colors.white),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        orderDetailsFigure('实付款', '59.90',
                            colors: const Color(0xFFFF0860)),
                        const SizedBox(height: 10),
                        orderDetailsFigure('交易数量', '1'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('创建时间', '2022-02-28  15:30:25'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('订单编号', '298335568635323558686'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(top: 250),
            color: const Color(0xFF2B1A3D),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        shape: MaterialStateProperty.all(const StadiumBorder(
                            side: BorderSide(
                                //设置 界面效果
                                style: BorderStyle.solid,
                                color: Colors.white)))),
                    child: const Text('取消订单'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.pinkAccent),
                          shape: MaterialStateProperty.all(const StadiumBorder(
                              side: BorderSide(
                            //设置 界面效果
                            style: BorderStyle.solid,
                          )))),
                      child: const Text('继续付款')),
                )
              ],
            ),
          ))
        ],
      ),
    ),
  );
}

//取消付款订单详细显示
Widget cancelForPaymentFigure() {
  return Container(
    color: const Color(0xff0F122A),
    child: Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          Image.asset('assets/images/ParesonalHome/cancel.png',
              width: 60, height: 70),
          const Center(
              child: Text(
            '取消订单',
            style: TextStyle(color: Colors.white),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Container(
              height: 230.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFF2B1A3D),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/ParesonalHome/test.png'))),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('克鲁鲁·采佩西',
                                    style: TextStyle(color: Colors.white)),
                                const SizedBox(height: 5),
                                Container(
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFFFEDDB6),
                                        Color(0xffFFE3C0),
                                        Color(0xffF5CC9A)
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: const Text(
                                    '吸血鬼的上位始祖之一，为第三位始祖。吸血鬼第三都市桑古奈姆的支配者，日本吸血鬼的女王',
                                    style: TextStyle(color: Colors.black),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Text(
                                  '产地：日本',
                                  style: TextStyle(color: Colors.white),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        orderDetailsFigure('实付款', '59.90',
                            colors: const Color(0xFFFF0860)),
                        const SizedBox(height: 10),
                        orderDetailsFigure('交易数量', '1'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('创建时间', '2022-02-28  15:30:25'),
                        const SizedBox(height: 10),
                        orderDetailsFigure('订单编号', '298335568635323558686'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(top: 250),
            color: const Color(0xFF2B1A3D),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        shape: MaterialStateProperty.all(const StadiumBorder(
                            side: BorderSide(
                                //设置 界面效果
                                style: BorderStyle.solid,
                                color: Colors.white)))),
                    child: const Text('删除订单'),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    ),
  );
}

//评论头像显示
Widget headPortraitStyle(String headPortrait, String showStyleImage) {
  return Stack(
    children: [
      ClipOval(
        child: Image.asset(headPortrait, width: 70, height: 70),
      ),
      Positioned(
        top: 50,
        left: 50,
        child: ClipOval(
          child: Image.asset(showStyleImage, width: 20, height: 20),
        ),
      )
    ],
  );
}

//预售流程圆
Widget processCircleFigure({Color color = Colors.white}) {
  return ClipOval(
    child: Container(
      width: 15,
      height: 15,
      color: color,
    ),
  );
}

//预售流程线
Widget processLineFigure() {
  return Container(
    width: 60.w,
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Color(0xffFF0860)))),
  );
}

//预售提示文字
Widget processPromptFigure(
    String makeAppointmentRemind, String releaseDate, String releaseTime) {
  return Column(
    children: [
      Text(
        makeAppointmentRemind,
        style: TextStyle(color: Colors.white, fontSize: 15.sp),
      ),
      Text(releaseDate,
          style: TextStyle(color: const Color(0xff77789C), fontSize: 15.sp)),
      Text(
        releaseTime,
        style: const TextStyle(color: Color(0xff77789C)),
      ),
    ],
  );
}

//抽奖显示
Future luckyDrawFigure(BuildContext context, bool luckyDrawState) {
  return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/log/cancel.png',
                    height: 13.h,
                  ))
            ],
          ),
          content: luckyDrawState
              ? Container(
                  width: 300.w,
                  height: 300.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/ParesonalHome/beAwardedAPrize.png'))),
                  child: const Center(
                      child: Padding(
                    padding: EdgeInsets.only(bottom: 5, right: 5),
                    child: Text('700'),
                  )),
                )
              : Image.asset(
                  'assets/images/ParesonalHome/NobeAwardedAPrize.png'),
        );
      });
}

//支付显示
Future defrayFigure(BuildContext context, bool luckyDrawState) {
  bool alipay = true;
  bool weChat = false;
  return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return AlertDialog(
                backgroundColor: Colors.white,
                elevation: 0,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/ParesonalHome/cancels.png',
                          height: 13.h,
                        )),
                    const Text(
                      '支付方式',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox()
                  ],
                ),
                content: SizedBox(
                  height: 110.h,
                  child: Column(
                    children: [
                      Text('￥19.9',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.sp)),
                      Row(
                        children: [
                          Image.asset('assets/images/ParesonalHome/WeChat.png',
                              width: 30, height: 30),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(child: Text('微信支付')),
                          IconButton(
                              onPressed: () {
                                setState((){
                                  if(weChat){
                                    weChat=!weChat;
                                  }
                                  alipay=true;
                                });
                              },
                              icon:weChat?
                              Image.asset(
                                  'assets/images/ParesonalHome/payCheckedOff.png',
                                  width: 20,
                                  height: 20):
                              Image.asset(
                                  'assets/images/ParesonalHome/payCheckedOn.png',
                                  width: 20,
                                  height: 20))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/ParesonalHome/Alipay.png',
                              width: 30, height: 30),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(child: Text('支付宝支付')),
                          IconButton(
                              onPressed:(){
                                setState((){
                                  if(alipay){
                                    alipay =!alipay;
                                  }
                                  weChat=true;
                                });
                              },
                              icon: alipay
                                  ? Image.asset(
                                  'assets/images/ParesonalHome/payCheckedOff.png',
                                  width: 20,
                                  height: 20)
                                  : Image.asset(
                                  'assets/images/ParesonalHome/payCheckedOn.png',
                                  width: 20,
                                  height: 20))
                        ],
                      )
                    ],
                  ),
                ));
          },
        );
      });
}

//操作提示显示
Future operationTipsFigure(BuildContext context,{Widget? title,Widget? content}){
  Timer timer= Timer(const Duration(seconds: 1), () {Navigator.of(context).pop();});
  return showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return UnconstrainedBox(
              constrainedAxis: Axis.vertical,
              child: SizedBox(
                width: 240.w,
                child: AlertDialog(
                    backgroundColor: const Color(0xff21232F),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    title: title,
                ),
              ),
            );
          },
        );
      }).then((value){
        if(timer.isActive){
          timer.cancel();
        }
  });
}
