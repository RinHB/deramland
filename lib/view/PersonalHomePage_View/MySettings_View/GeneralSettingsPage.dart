import 'package:flutter/material.dart';


import '../../../tool/ButtonCollection.dart';
import '../../../tool/ClearCache.dart';
import '../../../tool/ColorTable.dart';
class GeneralSettingsPage extends StatefulWidget {
  const GeneralSettingsPage({Key? key}) : super(key: key);

  @override
  State<GeneralSettingsPage> createState() => _GeneralSettingsPageState();
}

class _GeneralSettingsPageState extends State<GeneralSettingsPage> {

  bool informationNotification=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('通用设置'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(margin: const EdgeInsets.all(10),child: personalHomePageButton('系统权限管理', () {})),
            Container(margin: const EdgeInsets.all(10),child: personalHomePageButton('清理缓存', () {
              ClearCache().loadCache();
            })),
           ],
        ),
      ),
    );
  }
}
