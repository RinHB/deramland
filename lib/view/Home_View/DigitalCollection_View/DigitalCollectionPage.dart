import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigitalCollectionPage extends StatefulWidget {
  const DigitalCollectionPage({Key? key}) : super(key: key);

  @override
  State<DigitalCollectionPage> createState() => _DigitalCollectionPageState();
}

class _DigitalCollectionPageState extends State<DigitalCollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0F122A),
      child: ListView(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 10,right: 15.r,left: 15.r),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    scale: 0.5,
                    image: AssetImage('assets/images/homePage/test1.png'),fit: BoxFit.fill)),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.r,left: 10.r),
                      height: 40.h,
                      width: 240.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff0F122A),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          Image.asset(
                            'assets/images/homePage/test3.png',
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(width: 5.w),
                          const Expanded(
                            child: Text(
                              '敬请期待  07.03  12:00 开售',
                              style: TextStyle(color: Color(0xff2BCAA6)),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Image.asset(
                  'assets/images/homePage/test.png',
                  height: 180.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '《三星堆青铜面具人》',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white24
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 50.w,
                                    height: 20.h,
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
                            const SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white24),
                              child: const Text('第三始祖'),
                            )
                          ],
                        ),

                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.r,right: 10.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          ClipOval(
                            child: Image.asset('assets/images/ParesonalHome/test.png',width: 40.w,height: 40.h,),
                          ),
                          const SizedBox(width:10),
                          const  Text('嘻嘻',style: TextStyle(color:  Color(0xff77789C)),)
                        ],
                      ),
                      const Text('￥29.00',style: TextStyle(color: Color(0xffFF0860),fontSize: 20))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
