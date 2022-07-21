import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';

class CollectionDetailsPage extends StatefulWidget {
  const CollectionDetailsPage({Key? key}) : super(key: key);

  @override
  State<CollectionDetailsPage> createState() => _CollectionDetailsPageState();
}

class _CollectionDetailsPageState extends State<CollectionDetailsPage> {
  bool giveALike = false;
  bool navigationBarState = false;
  //炫耀显示
  void toShowOffShowBottomSheet() {
    //用于在底部打开弹框的效果
    showModalBottomSheet(
        builder: (BuildContext context) {
          //构建弹框中的内容
          return Container(
            decoration: const BoxDecoration(
              color: Color(0xFF201735),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          'assets/images/log/cancel.png',
                          height: 13.h,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Center(
                      child: Image.asset('assets/images/ParesonalHome/test.png',
                          width: 100, height: 100),
                    )),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('克鲁鲁·采佩西',
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFFEDDB6),
                        Color(0xffFFE3C0),
                        Color(0xffF5CC9A)
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text('AD57486 #05105 | 10000'),
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 50.w,
                      height: 50.h,
                      child: ClipOval(
                          child: Image.asset(
                              'assets/images/ParesonalHome/test.png')),
                    ),
                     SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('克鲁鲁·采佩西向你推荐了数字展览',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17)),
                          SizedBox(height: 5),
                          Text('《终结的炽天使》',
                              style: TextStyle(color: Color(0xff77789C)))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 80.h,
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  decoration: const BoxDecoration(
                      color: Color(0xff0F122A),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('DreamLand',
                                    style: TextStyle(color: Color(0xffF5CC9B))),
                                const SizedBox(width: 5),
                                Container(
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1,
                                          color: const Color(0xffF5CC9B))),
                                  child: const Center(
                                      child: Text('数字藏品',
                                          style: TextStyle(
                                              color: Color(0xffF5CC9B)))),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text('扫码打开Dream Land APP,发现有趣\n藏品',
                                style: TextStyle(color: Color(0xffF5CC9B)))
                          ],
                        ),
                      ),
                      Image.asset('assets/images/ParesonalHome/test.png',
                          width: 76.w, height: 100.h),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        backgroundColor: Colors.transparent, //重要
        context: context);
  }

  //转赠显示
  void giveShowBottomSheet() {
    //用于在底部打开弹框的效果
    showModalBottomSheet(
        builder: (BuildContext context) {
          //构建弹框中的内容
          return Container(
            height: 350,
            decoration: const BoxDecoration(
              color: Color(0xFF201735),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/ParesonalHome/prompt.png',
                    width: 100, height: 100),
                const SizedBox(height: 10),
                const Text(
                  '温馨提示',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(height: 10),
                const Text(
                  '本数字藏品尚未满足可以转赠的条件',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: const [
                      Text(
                        '· 你的数字藏品在购买满180天或受赠满2年后，可以转赠给满14周岁的实名用户。\n',
                        style: TextStyle(color: Color(0xff77789C)),
                      ),
                      Text(
                        '· 我们不支持任何形式的有偿转赠，请警惕欺诈风险。一但发现异常行为，我们会对相关账户采取限制措施。',
                        style: TextStyle(color: Color(0xff77789C)),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 1, color: const Color(0xffffffff))),
                    child: const Center(
                        child: Text(
                      '我知道了',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          );
        },
        backgroundColor: Colors.transparent, //重要
        context: context);
  }

  //评论显示
  void commentShowShowBottomSheet() {
    bool giveALikeState=false;
    //用于在底部打开弹框的效果
    showModalBottomSheet(
        builder: (context) {
          //构建弹框中的内容
          return StatefulBuilder(
            builder: (context,setStateBottomSheet) {
              return Container(
                height: 350.h,
                decoration: const BoxDecoration(
                  color: Color(0xFF201735),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Container(
                            margin: const EdgeInsets.only(left: 30),
                            child: const Text(
                              '共有325条评论',
                              style: TextStyle(color: Color(0xff77789C)),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Image.asset(
                              'assets/images/log/cancel.png',
                              height: 13.h,
                            )),
                      ],
                    ),
                    splitLineFigure(),
                    const SizedBox(height: 10),
                    Expanded(
                        child: ListView(
                          children: [
                            Container(
                                margin: const EdgeInsets.all(10),
                                child:Stack(
                                  children: [
                                    ClipOval(
                                      child: Image.asset('assets/images/ParesonalHome/test.png',width: 50,height: 50,),
                                    ),
                                    Container(
                                      width: 260.w,
                                      margin: EdgeInsets.only(left: 55.r,right: 20.r),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('嘻嘻',style: TextStyle(color: ColorTable.white),),
                                          const SizedBox(height: 5,),
                                          Text('评论了你：这个唐三彩色泽很不错，非常想拥有这个唐三彩色泽常想拥有个唐三彩色泽很不错，非常想拥有这个唐三彩色泽常想拥有',style: TextStyle(color:ColorTable.tipColor),maxLines: 6,overflow: TextOverflow.ellipsis,),
                                          const SizedBox(height: 5,),
                                          Text('·刚刚 江苏',style: TextStyle(color: ColorTable.white),),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 35.r),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  setStateBottomSheet((){
                                                    giveALikeState=!giveALikeState;
                                                  });
                                                },
                                                child: giveALikeState
                                                    ? Image.asset(
                                                    'assets/images/ParesonalHome/NotificationMessage/giveALikeOn.png',
                                                    width: 20,
                                                    height: 20)
                                                    : Image.asset(
                                                    'assets/images/collection/giveALikeOff.png',
                                                    width: 20,
                                                    height: 20),
                                              ),
                                              const Text('1',style: TextStyle(color: Colors.white),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        )),
                    Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: ColorTable.boxBackGroundPurple,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                            decoration: const BoxDecoration(
                              color: Color(0xFF0F122A),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            width: 240.w,
                            height: 35.h,
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const TextField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '说点什么吧，万一火了呢',
                                      hintStyle:
                                      TextStyle(color: Color(0xff77789C)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent)))),
                            ),
                          ),
                          Container(
                            width: 80.w,
                            margin: const EdgeInsets.only(top: 15),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.pinkAccent),
                                    shape: MaterialStateProperty.all(
                                        const StadiumBorder(
                                            side: BorderSide(
                                              //设置 界面效果
                                              style: BorderStyle.solid,
                                            )))),
                                child: Text('发送')),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: Colors.transparent, //重要
        context: context
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F122A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  toShowOffShowBottomSheet();
                },
                icon: Image.asset(
                  'assets/images/ParesonalHome/share.png',
                  width: 20,
                  height: 20,
                ))
          ],
        ),
      ),
      body: Container(
        color: const Color(0xff0F122A),
        child: Center(
          child: ListView(
            children: [
              Image.asset('assets/images/ParesonalHome/test.png',
                  width: 200, height: 200),
              const SizedBox(height: 10),
              const Center(
                  child: Text('克鲁鲁·采佩西',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFFEDDB6),
                        Color(0xffFFE3C0),
                        Color(0xffF5CC9A)
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text('AD57486 #05105 | 10000'),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff2B1A3D)),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: orderDetailsFigure('收藏者', '嘻嘻',
                            color: Color(0xff77789C), colors: Colors.white)),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: orderDetailsFigure('生成时间', '2022-03-25 16:14:29',
                            color: Color(0xff77789C), colors: Colors.white)),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 180.w,
                                child: const Text(
                                  '藏品哈希值',
                                  style: TextStyle(color: Color(0xff77789C)),
                                )),
                            const Expanded(
                                child: Text(
                              '44sxqsxq4xaxqxq611s61xsaxwvedgegerggere...',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            )),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Clipboard.setData(ClipboardData(text: '复制的内容'));
                            },
                            child: Image.asset(
                                'assets/images/ParesonalHome/copy.png',
                                width: 15,
                                height: 15),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
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
                  margin: EdgeInsets.only(top: 10),
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
                width: double.maxFinite,
                height: 40.h,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff2B1A3D)),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: orderDetailsFigure('创造者', '嘻嘻',
                      color: const Color(0xff77789C), colors: Colors.white),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12),
                child: const Text(
                  '温馨提示：本数字藏品版权由发行方或原创作者拥有，'
                  '除另行取得版权拥有者书面同意外，'
                  '用户不得将数字藏品拥于任何商业用途。请远离非理性炒作，防范欺诈风险。',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
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
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(),
                InkWell(
                    onTap: () {
                      safeSetState(() => giveALike = !giveALike);
                    },
                    child: Row(
                      children: [
                        giveALike
                            ? Image.asset(
                                'assets/images/ParesonalHome/NotificationMessage/giveALikeOn.png',
                                width: 20,
                                height: 20)
                            : Image.asset(
                                'assets/images/ParesonalHome/NotificationMessage/giveALikeOff.png',
                                width: 20,
                                height: 20),
                        SizedBox(width: 3),
                        Text(
                          '1.1w',
                          style: TextStyle(color: ColorTable.white),
                        )
                      ],
                    )),
                Image.asset('assets/images/ParesonalHome/GrayLine.png',height: 30),
                InkWell(
                    onTap: () {
                      commentShowShowBottomSheet();
                    },
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/images/ParesonalHome/NotificationMessage/messageOff.png',
                            width: 20,
                            height: 20),
                        SizedBox(width: 3),
                        Text(
                          '1.1w',
                          style: TextStyle(color: ColorTable.white),
                        )
                      ],
                    )),
                Image.asset('assets/images/ParesonalHome/GrayLine.png',height: 30),
                InkWell(
                  onTap: () {
                    giveShowBottomSheet();
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/images/ParesonalHome/giving.png',
                          width: 20, height: 20),
                      SizedBox(width: 3),
                      Text(
                        '转增',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(),
              ],
            ),
          )),
    );
  }
}
