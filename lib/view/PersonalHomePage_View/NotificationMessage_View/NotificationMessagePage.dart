import 'package:flutter/material.dart';
class NotificationMessagePage extends StatefulWidget {
  const NotificationMessagePage({Key? key}) : super(key: key);

  @override
  State<NotificationMessagePage> createState() => _NotificationMessagePageState();
}

class _NotificationMessagePageState extends State<NotificationMessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('通知消息'),
        backgroundColor: const Color(0xff0F122A),
      ),
      body: Container(
        color:  const Color(0xff0F122A),
      ),
    );
  }
}
