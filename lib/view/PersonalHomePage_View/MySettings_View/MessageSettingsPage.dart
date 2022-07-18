import 'package:flutter/material.dart';
import 'package:flutter_deramland/tool/safesetstate.dart';

import '../../../tool/ButtonCollection.dart';
import '../../../tool/ColorTable.dart';

class MessageSettingsPage extends StatefulWidget {
  const MessageSettingsPage({Key? key}) : super(key: key);

  @override
  State<MessageSettingsPage> createState() => _MessageSettingsPageState();
}

class _MessageSettingsPageState extends State<MessageSettingsPage> {
  bool informationNotification = false;
  bool saleNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorTable.deepPurple,
        title: Text('消息通知'),
      ),
      body: Container(
        color: ColorTable.deepPurple,
        width: double.maxFinite,
        child: Column(
          children: [
            mySettingsPageButton('新消息通知', () {
              safeSetState(() {
                informationNotification = !informationNotification;
              });
            }, informationNotification),
            mySettingsPageButton('订阅发售日历', () {
              safeSetState(() {
                saleNotification = !saleNotification;
              });
            }, saleNotification),
          ],
        ),
      ),
    );
  }
}
