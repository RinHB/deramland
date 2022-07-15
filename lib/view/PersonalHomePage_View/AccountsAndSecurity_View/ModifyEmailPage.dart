import 'package:flutter/material.dart';

import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';
import '../../../tool/InputBox.dart';

class ModifyEmailPage extends StatefulWidget {
  const ModifyEmailPage({Key? key}) : super(key: key);

  @override
  State<ModifyEmailPage> createState() => _ModifyEmailPageState();
}

class _ModifyEmailPageState extends State<ModifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('修改邮箱'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        width: double.maxFinite,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: ColorTable.boxBackGroundPurple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        child: changePasswordInputBox(
                          '请输入邮箱',
                          phoneSelectBox: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.black45,
                            ),
                            child: Text('邮箱',style: TextStyle(color: ColorTable.white),),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25)
                    ],
                  ),
                )),
            gradientButtons(
                '修改邮箱',
                const Color(0xFFFF0860),
                const Color(0xFF333773),
                    () {debugPrint('修改密码');}
            ),
          ],
        ),
      ),
    );
  }
}
