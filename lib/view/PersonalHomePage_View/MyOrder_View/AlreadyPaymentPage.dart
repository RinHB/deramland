import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'OrderDetailsPage.dart';
import 'OrderDetailsPage.dart';
class AlreadyPaymentPage extends StatefulWidget {
  const AlreadyPaymentPage({Key? key}) : super(key: key);

  @override
  State<AlreadyPaymentPage> createState() => _AlreadyPaymentPageState();
}

class _AlreadyPaymentPageState extends State<AlreadyPaymentPage> {
  bool state =true;
  Future<void> _onRefresh() async {
    debugPrint('刷新');
    await Future.delayed(Duration(seconds: 3),(){
      debugPrint('刷新数据成功');
    });
  }
  @override
  Widget build(BuildContext context) {
    //通过状态判断是否有物品
    return state?
    Container(
      color: const Color(0xff0F122A),
      child: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFF2B1A3D),
                ),
                child:Column(
                  children: [
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsPage(
                                  index: 4,
                                )));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(width: 10),
                          Expanded(
                            child: Row(
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
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  const [
                                    Text('取消交易',style: TextStyle(color: Color(0xFF77789C))),
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
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
                          child: const Text('删除订单'),
                        ),
                        const SizedBox(width: 20,),
                      ],
                    )
                  ],
                ),
              ) ,
            ),
          ],
        ),
      ),
    ):
    Container(
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
