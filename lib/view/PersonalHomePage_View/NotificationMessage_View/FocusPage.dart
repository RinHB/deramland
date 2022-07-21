import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  bool focusPageStatus=false;
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
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/OthersHomepagePage');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipOval(
                        child: Image.asset('assets/images/ParesonalHome/test.png',width: 50,height: 50),
                      ),
                      Expanded(
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
                        child: ElevatedButton(
                            onPressed: (){
                              safeSetState(()=>focusPageStatus=!focusPageStatus);
                            },
                            style:focusPageStatus?ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>  Colors.pinkAccent),
                                shape: MaterialStateProperty.all(
                                    const StadiumBorder(
                                        side: BorderSide(
                                          //设置 界面效果
                                          style: BorderStyle.solid,
                                        )
                                    )
                                )
                            ):
                            ButtonStyle(
                                side:
                                MaterialStateProperty.all(const BorderSide(color: Colors.grey, width: 1)),
                                backgroundColor:MaterialStateColor.resolveWith((states) =>  Colors.transparent),
                                shape: MaterialStateProperty.all(
                                    const StadiumBorder(
                                        side: BorderSide(
                                          //设置 界面效果
                                          style: BorderStyle.solid,
                                        )
                                    )
                                )
                            ),
                            child: focusPageStatus?Text('+关注'):Text('已关注')
                        ),
                      )
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
