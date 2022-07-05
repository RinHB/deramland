import 'package:flutter/material.dart';

import '../../../tool/appbar.dart';

class BlockchainAccountInformationPage extends StatelessWidget {
  const BlockchainAccountInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F122A),
      appBar: AppBarConfig.getAppBar("区块链账户信息", context,color: const Color(0xFF0F122A)),
      body: Container(
        margin: const EdgeInsets.only(left: 30.0,right: 30.0,top: 50.0),
        child: Column(
          children: const <Widget>[

          ],
        ),
      ),
    );
  }
}
