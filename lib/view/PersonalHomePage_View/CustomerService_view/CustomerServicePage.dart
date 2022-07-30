import 'package:flutter/material.dart';
import 'package:flutter_deramland/entity/Message.dart';
import 'package:flutter_deramland/tool/ColorTable.dart';

class CustomerServicePage extends StatefulWidget {
  const CustomerServicePage({Key? key}) : super(key: key);

  @override
  State<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage> {
  final TextEditingController _input=TextEditingController();
  bool  a= true;
  List<Message> messages = [
    Message(
        text: '嘻嘻',
        date: DateTime.now().subtract(const Duration(microseconds: 1)),
        isSentByMe: false),
    Message(
        text: '嘻嘻',
        date: DateTime.now().subtract(const Duration(microseconds: 1)),
        isSentByMe: true),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的客服'),
        backgroundColor: ColorTable.deepPurple,
      ),
      body: Container(
        color: ColorTable.deepPurple,
        child: Column(
          children: [
            Expanded(
                child:
                ListView.builder(
                    itemCount:messages.length ,
                    itemBuilder:(context,index)=>Messages()
                )
            ),
            Container(height: 50,color: Colors.deepPurple,)
          ],
        ),
      ),
    );
  }
}

class Messages extends StatelessWidget{
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('嘻嘻',style: TextStyle(color: Colors.white),);
  }


}
