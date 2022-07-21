import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../tool/AccordingTheInformation.dart';

class CollectionRecordPage extends StatefulWidget {
  const CollectionRecordPage({Key? key}) : super(key: key);

  @override
  State<CollectionRecordPage> createState() => _CollectionRecordPageState();
}

class _CollectionRecordPageState extends State<CollectionRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('藏品记录'),
          backgroundColor: const Color(0xff0F122A),
        ),
        body: Container(
          color:  const Color(0xff0F122A),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,right: 10, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFF2B1A3D),
                  ),
                  child:InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, '/CollectionDetailsPage');
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10.r),
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
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
                                    width: 179.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  const [
                                        Text('克鲁鲁·采佩西',style: TextStyle(color: Colors.white)),
                                        SizedBox(height: 5),
                                        Text(
                                          'AD57486 #05105 | 10000',
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
                            SizedBox(

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:  const [
                                      Text('交易成功',style: TextStyle(color: Color(0xFF2BCAA6))),
                                    ],
                                  ),
                                ),
                          ],

                        ),
                        const SizedBox(height: 10),
                        splitLineFigure(),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('交易金额','59.90',color: Colors.white54,colors: Colors.white)
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('交易时间','2022-03-25 16:14:29',color: Colors.white54,colors: Colors.white)
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('记录单号','202203255468246855648',color: Colors.white54,colors: Colors.white)
                        ),
                      ],
                    ),
                  ),

                ) ,
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 15,right: 10, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFF2B1A3D),
                  ),
                  child:InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, '/CollectionDetailsPage');
                    },
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(left: 10.r),
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
                                  width: 180.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  const [
                                      Text('克鲁鲁·采佩西',style: TextStyle(color: Colors.white)),
                                      SizedBox(height: 5),
                                      Text(
                                        'AD57486 #05105 | 10000',
                                        style: TextStyle(color: Colors.white),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:  const [
                                  Text('转增成功',style: TextStyle(color: Color(0xFF2BCAA6))),
                                ],
                              ),
                            ),

                          ],

                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: const EdgeInsets.only(right: 10,left: 10),
                          decoration: const BoxDecoration(
                              border:Border(bottom:BorderSide(width: 2,color: Color(0xffF0F0F0)) )
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('转增者','嘻嘻',color: Colors.white54,colors: Colors.white)
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('转增时间','2022-03-25 16:14:29',color: Colors.white54,colors: Colors.white)
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('接受时间','2022-03-25 16:14:29',color: Colors.white54,colors: Colors.white)
                        ),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: orderDetailsFigure('记录单号','202203255468246855648',color: Colors.white54,colors: Colors.white)
                        ),
                      ],
                    ),
                  ),

                ) ,
              )
            ],
          ),
        ),
    );
  }
}
