import 'package:flutter/material.dart';

class GiveALikePage extends StatefulWidget {
  const GiveALikePage({Key? key}) : super(key: key);

  @override
  State<GiveALikePage> createState() => _GiveALikePageState();
}

class _GiveALikePageState extends State<GiveALikePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('点赞')
      ],
    );
  }
}
