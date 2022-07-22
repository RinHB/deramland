import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tool/AccordingTheInformation.dart';
class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({Key? key}) : super(key: key);

  @override
  State<PersonalInformationPage> createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('个人信息'),
        backgroundColor: const Color(0xff0F122A),
      ),
      body: Container(
        color: const Color(0xff0F122A),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Center(
              child: Container(
                width: 320.w,
                decoration: BoxDecoration(
                  color: const Color(0xff2B1A3D),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    personalInformationListFigure(
                        '头像',
                        ClipOval(
                          child: Image.asset('assets/images/ParesonalHome/defaultavatar.png',width: 50,height: 50),
                        )
                    ),
                    personalInformationListFigure(
                        '昵称',
                        const Text('请输入名称',style: TextStyle(color: Color(0xff77789C)),)
                    ),
                    personalInformationListFigure(
                        '二维码名片',
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/QrCodePage');
                          },
                          child: Row(
                            children: [
                              Image.asset('assets/images/ParesonalHome/QrCode.png',width: 20,height: 20),
                              const SizedBox(width: 10),
                              Image.asset('assets/images/ParesonalHome/Component_8_Property1_right.png',width: 15,height: 15)
                            ],
                          ),
                        )
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
