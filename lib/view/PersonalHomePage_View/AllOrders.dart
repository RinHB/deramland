import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              height: 126,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 7),
                        blurRadius: 1,
                        spreadRadius: 0
                    )
                  ]
              ),
              child: TextButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 0, color: Colors.white)),
                    overlayColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  //点击所选的ID
                },
                child: Row(
                  children: [
                    Expanded(
                        child:
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
                          child: Image.asset('assets/images/ParesonalHome/test.png',fit: BoxFit.fill,), //图片
                        )
                    ),
                    SizedBox(
                      width: 220.w,
                      height: 120.h,
                      child: Column(
                        children:  [
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('',style: const TextStyle(color: Colors.black54)),
                                ),
                              )//标题
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    '',
                                    softWrap: true,
                                    style: const TextStyle(fontSize: 23,color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ) ,
            ),
          )
        ],
      ),
    );
  }
}
