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
  bool informationNotification = false;
  String cache='';
  cacheHint(){
    tooltipButton(
        context,
        title: '清理缓存 $cache',
        content: '清理后所有缓存内容都会被清除',
        sure: '清理',
        color: const Color(0xff21232F),
        onPressed: () {
          ClearCache().loadCache(true);
          cache='';
          Navigator.of(context).pop();
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: const Text('通用设置'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                child: personalHomePageButton('系统权限管理', () async {

                })),
            Container(
                margin: const EdgeInsets.all(10),
                child: personalHomePageButton('清理缓存', () async{
                  cache= await ClearCache().loadCache(false);
                  cacheHint();
                })),
          ],
        ),
      ),
    );
  }
}
