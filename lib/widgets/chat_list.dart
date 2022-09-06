import 'package:chatui/info.dart';
import 'package:chatui/widgets/my_message_card.dart';
import 'package:chatui/widgets/sender_message_card.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFf4d5d2), Color(0xFFe1dbe9)])),
      child: ListView.builder(
        itemCount: demo_messages.length,
        itemBuilder: (context, index) {
          if (demo_messages[index]['isMe'] == true) {
            return MyMessageCard(
              message: demo_messages[index]['text'].toString(),
              date: demo_messages[index]['time'].toString(),
            );
          }
          return SenderMessageCard(
            message: demo_messages[index]['text'].toString(),
            date: demo_messages[index]['time'].toString(),
          );
        },
      ),
    );
  }
}
