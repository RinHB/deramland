import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../tool/AccordingTheInformation.dart';
import 'ModifyGiftPasswordPage.dart';
import 'ModifyPhoneNumberPage.dart';
import 'RealNameVerifiedPage.dart';

class AccountsAndSecurityPage extends StatefulWidget {
  const AccountsAndSecurityPage({Key? key}) : super(key: key);

  @override
  State<AccountsAndSecurityPage> createState() =>
      _AccountsAndSecurityPageState();
}

class _AccountsAndSecurityPageState extends State<AccountsAndSecurityPage> {
  double insideBoxMargin = 4;
  String phone='12144411214';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('账号与安全', style: TextStyle(color: ColorTable.white)),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: ColorTable.boxBackGroundPurple,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: personalInformationListFigure(
                          '头像',
                          ClipOval(
                            child: ClipOval(
                              child: Image.asset(
                                  'assets/images/ParesonalHome/test1.png',
                                  width: 50,
                                  height: 50,fit: BoxFit.cover),
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '昵称',
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/PersonalInformationPage');
                            },
                            child: Text(
                              '请输入名称',
                              style: TextStyle(color: ColorTable.pink),
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '手机号',
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ModifyPhoneNumberPage(
                                   phone: phone,
                                  )));
                            },
                            child: Row(
                              children: [
                                Text(phone,style: TextStyle(color: ColorTable.tipColor),),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '修改密码',
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/ChangePasswordPage');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '去修改',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '修改邮箱',
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/ModifyEmailPage');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '2125485468@qq.com',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '实名认证',
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => RealNameVerifiedPage(
                                    phone: phone,
                                  )));
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Image.asset(
                                    'assets/images/ParesonalHome/PayForSuccess.png',
                                    width: 15,
                                    height: 15),
                                const SizedBox(width: 5),
                                Text(
                                  '已认证',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '修改转增密码',
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ModifyGiftPasswordPage(
                                    phone:phone
                                  )));
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '去修改',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin,bottom: 7.r),
                      child: personalInformationListFigure(
                          '区块链地址',
                          InkWell(
                            onTap: () {
                              debugPrint('区块链地址');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 110.w,
                                        child: Text(
                                      '2656526zwssxwqs565',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: ColorTable.pink),
                                    )),
                                  ],
                                ),
                                InkWell(
                                  onTap: (){
                                    operationTipsFigure(context,
                                      title: Column(
                                        children: [
                                          Image.asset('assets/images/ParesonalHome/success.png',width: 30,height: 30,),
                                          Text('复制成功',style: TextStyle(color: ColorTable.white),)
                                        ],
                                      ),
                                    );
                                    Clipboard.setData(const ClipboardData(text:'复制的内容'));
                                  },
                                  child: Image.asset(
                                      'assets/images/ParesonalHome/copy.png',
                                      width: 15,
                                      height: 15),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
