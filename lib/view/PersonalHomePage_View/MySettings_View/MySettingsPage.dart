import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';

import '../../../tool/AccordingTheInformation.dart';
class MySettingsPage extends StatefulWidget {
  const MySettingsPage({Key? key}) : super(key: key);

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  double insideBoxMargin = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
      ),
      body: Container(
        color: ColorTable.deepPurple,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorTable.boxBackGroundPurple
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '消息通知',
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/MessageSettingsPage');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          ),
                          color: ColorTable.tipColor
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '通用设置',
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/GeneralSettingsPage');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          ),
                          color: ColorTable.tipColor
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '隐私设置',
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/PrivacySettingPage');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(color: ColorTable.pink),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          ),
                          color: ColorTable.tipColor
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: insideBoxMargin),
                      child: personalInformationListFigure(
                          '注销账号',
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/DestroyAccountPage');
                            },
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text(
                                  '注销后无法恢复，请谨慎操作',
                                  style: TextStyle(color: ColorTable.tipColor),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                    'assets/images/ParesonalHome/Component_8_Property1_right.png',
                                    width: 15,
                                    height: 15)
                              ],
                            ),
                          ),
                          color: ColorTable.tipColor
                      ),
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),

            ],
          ),
        ),
      );
  }
}
