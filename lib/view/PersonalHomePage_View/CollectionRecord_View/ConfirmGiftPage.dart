import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';

class ConfirmGiftPage extends StatefulWidget {
  const ConfirmGiftPage({Key? key}) : super(key: key);

  @override
  State<ConfirmGiftPage> createState() => _ConfirmGiftPageState();
}

class _ConfirmGiftPageState extends State<ConfirmGiftPage> {
  Future enterPassword(){
    return showCupertinoModalPopup(
      context: context,
      builder: (context){
        return UnconstrainedBox(
          constrainedAxis: Axis.vertical,
          child: SizedBox(
            child: AlertDialog(
              backgroundColor:Color(0xFF201735),
              titlePadding: const EdgeInsets.only(top: 10 ,left: 20,bottom: 5),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Text('请输入操作密码',style: TextStyle(color: ColorTable.white),),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        'assets/images/log/cancel.png',
                        height: 13.h,
                      )),
                ],
              ),
              contentPadding: const EdgeInsets.only(left: 20,right: 20),
              content: PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: true,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor:ColorTable.tipColor,
                    inactiveColor: ColorTable.tipColor,
                    selectedColor: ColorTable.tipColor
                ),
                onChanged: (_) {

                },
                onCompleted: (v) {
                  if(v=='1234'){
                    debugPrint('验证成功');
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/ReceiveAGiftPage');
                  }else{
                    debugPrint('验证失败');
                  }
                },
                textStyle: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
              ),
              actions: [
                    Theme(
                      data:   ThemeData(
                        brightness: Brightness.light,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(onTap: (){}, child: Text('忘记密码？',style: TextStyle(color: ColorTable.tipColor),)),
                          InkWell(onTap: (){}, child: Text('人脸认证',style: TextStyle(color: ColorTable.white),))
                        ],
                      ),
                    ),
              ],

            ),
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: const Text('确认转赠'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/images/ParesonalHome/test.png',
                    height: 120.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 230.w,
                    height: 120.h,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/ParesonalHome/giftBackground.png'),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.only(left: 15,top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '克鲁鲁',
                            style: TextStyle(
                                color: Colors.white, fontSize: 19.sp),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFFFEDDB6),
                                  Color(0xffFFE3C0),
                                  Color(0xffF5CC9A)
                                ]),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Text('AD57486 #05105 | 10000'),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            '克鲁鲁',
                            style: TextStyle(
                                color: ColorTable.tipColor, fontSize: 15.sp),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            '克鲁鲁',
                            style: TextStyle(
                                color: ColorTable.tipColor, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('温馨提示：',style: TextStyle(color: ColorTable.white,fontSize: 18.sp),),
                  const SizedBox(height: 5),
                  Text('一旦发起数字藏品转赠，即代表你同意以下条件',style: TextStyle(color: ColorTable.white,fontSize: 15.sp),),
                  const  SizedBox(height: 5),
                  Text('· 转赠成功后不可撤销，在使用场景（如付款码皮肤页面）将不再显示本数字藏品。',style: TextStyle(color: ColorTable.tipColor),),
                  const SizedBox(height: 5),
                  Text('· 该数字藏品在受赠满2年后可再次发起转赠。',style: TextStyle(color: ColorTable.tipColor),),
                  const SizedBox(height: 5),
                  Text('· 我们不支持任何形式的有偿转赠，请警惕欺诈风险。一旦发现异常行为,我们会对相关账户采取限制措施。',style: TextStyle(color: ColorTable.tipColor),),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      gradientButtons('确认', const Color(0xFFFF0860),
                          const Color(0xFF333773), () {
                            enterPassword();
                          }),
                      const SizedBox(height: 10),
                      Text('24小时内对方未领取，将退还给你',style: TextStyle(color: ColorTable.tipColor),)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
