class Message{
  String text='';
  DateTime date=DateTime(DateTime.march);
  bool isSentByMe=false;
  Message({
   required this.text,
   required this.date,
   required this.isSentByMe
  });
}