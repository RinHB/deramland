import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class FocusPage extends StatefulWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0F122A),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            height: 150,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Image.asset('assets/images/ParesonalHome/test.png',width: 50,height: 50),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children:  const [
                              Text('嘻嘻',style: TextStyle(color: Colors.white)),
                              Text('关注了你',style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          const  Text('2022.06.12  15:30:20',style: TextStyle(color: Color(0xff77789C))),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70.w,
                      child: ElevatedButton(
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
                          child: Text('+关注')
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
