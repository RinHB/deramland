import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/AccordingTheInformation.dart';
class CollectionDetailsPage extends StatefulWidget {
  const CollectionDetailsPage({Key? key}) : super(key: key);

  @override
  State<CollectionDetailsPage> createState() => _CollectionDetailsPageState();
}

class _CollectionDetailsPageState extends State<CollectionDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F122A),
      ),
      body: Container(
        color: const Color(0xff0F122A),
        child: Center(
          child: ListView(
            children: [
              Image.asset('assets/images/ParesonalHome/test.png',width: 200,height: 200),
              const SizedBox(height: 10),
              const Center(child: Text('克鲁鲁·采佩西',style: TextStyle(color: Colors.white,fontSize: 20))),
              const SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [Color(0xFFFEDDB6),Color(0xffFFE3C0),Color(0xffF5CC9A)]),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Text('AD57486 #05105 | 10000'),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 120.h,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 10,right: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xff2B1A3D)
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: orderDetailsFigure('收藏者','嘻嘻')
                    ),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: orderDetailsFigure('生成时间','2022-03-25 16:14:29')
                    ),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: orderDetailsFigure('藏品哈希值','44sxqsxq4xaxqxq611s61xsaxwvedgegerggere...')
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           InkWell(
                            child: Image.asset('assets/images/ParesonalHome/copy.png',width: 15,height: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
