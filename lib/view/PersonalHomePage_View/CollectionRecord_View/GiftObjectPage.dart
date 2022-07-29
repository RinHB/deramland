import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../tool/AccordingTheInformation.dart';
import '../../../tool/ButtonCollection.dart';

class GiftObjectPage extends StatefulWidget {
  const GiftObjectPage({Key? key}) : super(key: key);

  @override
  State<GiftObjectPage> createState() => _GiftObjectPageState();
}

class _GiftObjectPageState extends State<GiftObjectPage> {
  FocusNode blankNode = FocusNode();
  bool choose = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: const Text('选择转赠对象'),
      ),
      body: closeTheKeyboard(
        context,
        child: Container(
          color: ColorTable.deepPurple,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorTable.boxBackGroundPurple),
                child: TextField(
                  style: TextStyle(color: ColorTable.white),
                  onSubmitted: (value) {
                    debugPrint(value);
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          Image.asset('assets/images/ParesonalHome/search.png'),
                      hintText: '请输入对方手机号或邮箱',
                      hintStyle: TextStyle(color: ColorTable.tipColor)),
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(8),
                  child: Text(
                    '请选择转增对象',
                    style: TextStyle(color: ColorTable.tipColor),
                  )),
              splitLineFigure(),
              Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipOval(
                          child: Image.asset(
                              'assets/images/ParesonalHome/test.png')),
                    ),
                    Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              '测试',
                              style: TextStyle(color: ColorTable.white),
                            ))),
                    IconButton(
                        onPressed: () {
                          safeSetState(() => choose = !choose);
                        },
                        icon: choose
                            ? Image.asset(
                                'assets/images/ParesonalHome/payCheckedOn.png',
                                width: 20,
                                height: 20)
                            : Image.asset(
                                'assets/images/ParesonalHome/chooseOff.png',
                                width: 20,
                                height: 20))
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    height: 90,
                    child: Center(
                      child: gradientButtons('下一步', const Color(0xFFFF0860),
                          const Color(0xFF333773), () {
                            if(choose){
                             Navigator.pushNamed(context, '/ConfirmGiftPage');
                            }else{
                              Fluttertoast.showToast(msg: '请选择赠送对象');
                            }
                          }),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
