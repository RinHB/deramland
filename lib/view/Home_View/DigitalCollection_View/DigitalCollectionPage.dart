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
            height: 380.h,
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    scale: 0.5,
                    image: AssetImage('assets/images/homePage/test1.png'))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 110.r, top: 10.r),
                  width: 200.h,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff0F122A),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/images/homePage/test3.png',
                        height: 20.h,
                        width: 20.w,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '敬请期待  07.03  12:00 开售',
                        style: TextStyle(color: Color(0xff2BCAA6)),
                      ),
                    ],
                  )),
                ),
                const SizedBox(
                  height: 45,
                ),
                Image.asset(
                  'assets/images/homePage/test.png',
                  height: 180.h,
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
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
                        const SizedBox(height: 5,),

                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          ClipOval(
                            child: Image.asset('assets/images/ParesonalHome/test.png',width: 40,height: 40,),
                          ),
                          const SizedBox(width:10),
                          const  Text('嘻嘻',style: TextStyle(color:  Color(0xff77789C)),)
                        ],
                      ),
                      const Text('￥29.00',style: TextStyle(color: Color(0xffFF0860),fontSize: 20))
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
