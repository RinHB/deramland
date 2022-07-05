import 'package:flutter/material.dart';
import 'package:flutter_deramland/view/PersonalHomePage_View/AllOrders.dart';
import 'package:flutter_deramland/view/Tab/tabs.dart';

import 'AlreadyCancelPage.dart';
import 'AlreadyPaymentPage.dart';
import 'WaitingForPaymentPage.dart';
class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Tab> tabs = [
    const Tab(text: '全部'),
    const Tab(text: '待付款'),
    const Tab(text: '已付款'),
    const Tab(text: '已取消'),
  ];
  List<Widget> tabController=[
    const AllOrders(),
    const WaitingForPaymentPage(),
    const AlreadyPaymentPage(),
    const AlreadyCancelPage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: tabs.length,
      initialIndex: 0,
      vsync: this
    );
  }
  //销毁时调用
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的订单'),
        bottom: TabBar(
            indicatorColor: const Color(0xFFFEAA47),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs:tabs
        ),
        backgroundColor: const Color(0xff0F122A),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabController,
      ),
    );
  }
}
