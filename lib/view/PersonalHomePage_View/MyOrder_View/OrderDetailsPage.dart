import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../tool/AccordingTheInformation.dart';

class OrderDetailsPage extends StatefulWidget {
  int? index;
  OrderDetailsPage({Key? key,this.index}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  int orderStatus=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    orderStatus =widget.index!;
  }
  //1.订单详细 2.交易成功 3.等待付款 4.取消订单
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('订单详细'),
        backgroundColor: const Color(0xff0F122A),
      ),
      body: orderStatus==1?Container(
        color:const Color(0xff0F122A),
        child: Center(
          child: Column(
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
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage('assets/images/ParesonalHome/test.png')
                                    )
                                ),
                              ),
                              const SizedBox(width: 10),
                              SizedBox(
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    const Text('克鲁鲁·采佩西',style: TextStyle(color: Colors.white)),
                                    const SizedBox(height: 5),
                                    Container(
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [Color(0xFFFEDDB6),Color(0xffFFE3C0),Color(0xffF5CC9A)]),
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
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
                            orderDetailsFigure('实付款','59.90',colors: const Color(0xFFFF0860)),
                            const SizedBox(height: 10),
                            orderDetailsFigure('交易数量','1'),
                            const SizedBox(height: 10),
                            orderDetailsFigure('创建时间','2022-02-28  15:30:25'),
                            const SizedBox(height: 10),
                            orderDetailsFigure('付款信息','2022-02-28  15:31:01'),
                            const SizedBox(height: 10),
                            orderDetailsFigure('订单编号','298335568635323558686'),
                            const SizedBox(height: 10),
                            orderDetailsFigure('付款方式','支付宝'),
                            const SizedBox(height: 10),
                            orderDetailsFigure('支付流水号','29565656565555656249795'),
                          ],
                        ),
                      )
                    ],
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ):
      orderStatus==2?alreadyPaymentDetailsFigure():
      orderStatus==3?waitingForPaymentFigure():
      cancelForPaymentFigure(),
    );
  }
}
