import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'OrderDetailsPage.dart';
class AllOrders extends StatefulWidget {
  const AllOrders({Key? key}) : super(key: key);

  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color(0xff0F122A),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 15, left: 15),
            child: Container(
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
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 90.w,
                                height: 90.h,
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
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 15, left: 15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xFF2B1A3D),
              ),
              child:InkWell(
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailsPage(
                            index: 1,
                          )));
                },
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 90.w,
                                height: 90.h,
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
                                width: 110.w,
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
                                  Text('交易成功',style: TextStyle(color: Color(0xFF2BCAA6))),
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
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}
