enum MessageType { text,image}
enum MessageStatus {notSent,notView,viewed }

class Message{
  // 文字内容
  String text='';
  //发送的类型
  final MessageType messageType;
  //发送状态
  final MessageStatus messageStatus;
  // 发送时间
  String nickName='';
  // 发送人
  bool isSentByMe=false;
  Message({
   required this.text,
   required this.nickName,
   required this.isSentByMe,
   required this.messageType,
   required this.messageStatus
  });
}
