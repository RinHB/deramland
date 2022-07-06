import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'OrderDetailsPage.dart';
class WaitingForPaymentPage extends StatefulWidget {
  const WaitingForPaymentPage({Key? key}) : super(key: key);

  @override
  State<WaitingForPaymentPage> createState() => _WaitingForPaymentPageState();
}

class _WaitingForPaymentPageState extends State<WaitingForPaymentPage> {
  bool state =true;
  Future<void> _onRefresh() async {
    debugPrint('刷新');
    await Future.delayed(Duration(seconds: 3),(){
      debugPrint('刷新数据成功');
    });
  }
  @override
  Widget build(BuildContext context) {
    return state?Container(
      color:  const Color(0xff0F122A),
      child: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 15, left: 15),
              child: Container(
                height: 140.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFF2B1A3D),

                ),
                child:InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderDetailsPage(
                              index: 3,
                            )));
                  },
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/ParesonalHome/test.png')
                                    )
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                margin: const EdgeInsets.only(bottom: 40),
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  const [
                                    Text('克鲁鲁·采佩西',style: TextStyle(color: Colors.white)),
                                    SizedBox(height: 5),
                                    Text(
                                      '吸血鬼的上位始祖之一，为第三位始祖。吸血鬼第三都市桑古奈姆的支配者，日本吸血鬼的女王',
                                      style: TextStyle(color: Colors.white),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  const [
                                    Text('继续付款',style: TextStyle(color: Color(0xFFFEAA47))),
                                    SizedBox(height: 35),
                                    Text(
                                      '实付款：19.90',
                                      style: TextStyle(color: Colors.white),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            child: Text('取消订单'),
                            style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>  Colors.transparent),
                                shape: MaterialStateProperty.all(
                                    const StadiumBorder(
                                        side: BorderSide(
                                          //设置 界面效果
                                            style: BorderStyle.solid,
                                            color: Colors.white
                                        )
                                    )
                                )
                            ),
                          ),
                          const SizedBox(width: 20,),
                          ElevatedButton(
                              onPressed: (){},
                              style:ButtonStyle(
                                  backgroundColor:MaterialStateColor.resolveWith((states) =>  Colors.pinkAccent),
                                  shape: MaterialStateProperty.all(
                                      const StadiumBorder(
                                          side: BorderSide(
                                            //设置 界面效果
                                            style: BorderStyle.solid,
                                          )
                                      )
                                  )
                              ) ,
                              child: const Text('继续付款')
                          ),
                          const SizedBox(width: 10,),
                        ],
                      )
                    ],
                  ),
                ),
              ) ,
            ),
          ],
        ),
      ),
    ):Container(
      color: const Color(0xff0F122A),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 240,
            width: double.maxFinite,
            decoration:  BoxDecoration(
              color: const Color(0xFF2B1A3D),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset('assets/images/ParesonalHome/test.png',width: 100,height: 100),
                const SizedBox(height: 10),
                const Text('空空如也~',style: TextStyle(color: Colors.white),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
