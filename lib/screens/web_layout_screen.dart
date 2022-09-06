import 'package:chatui/colors.dart';
import 'package:chatui/demo.dart';
import 'package:chatui/info.dart';
import 'package:chatui/widgets/my_message_card.dart';
import 'package:chatui/widgets/sender_message_card.dart';
import 'package:chatui/widgets/web_chat_appbar.dart';
import 'package:chatui/widgets/web_profile_bar.dart';
import 'package:chatui/widgets/web_search_bar.dart';
import 'package:flutter/material.dart';

class WebLayoutScreen extends StatelessWidget {
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  constraints: BoxConstraints(minWidth: 250, maxWidth: 300),
                  child: Column(
                    children: [
                      WebProfileBar(),
                      WebSearchBar(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            //constraints: BoxConstraints(minWidth: 250, maxWidth: 300),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: emails.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: ListTile(
                                          title: Text(
                                            emails[index].name,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                          subtitle: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6.0),
                                            child: Text(
                                              emails[index].subject,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          leading: CircleAvatar(
                                            backgroundImage:
                                                AssetImage(emails[index].image),
                                            radius: 30,
                                          ),
                                          trailing: Text(
                                            emails[index].time,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      color: dividerColor,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(color: dividerColor),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFf4d5d2), Color(0xFFe1dbe9)])
                      // image: DecorationImage(
                      //   image: AssetImage(
                      //     "assets/images/backgroundImage.png",
                      //   ),
                      //   fit: BoxFit.cover,
                      // ),
                      ),
                  child: Column(
                    children: [
                      ChatAppBar(),
                      SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          controller: ScrollController(),
                          itemCount: demo_messages.length,
                          itemBuilder: (context, index) {
                            if (demo_messages[index]['isMe'] == true) {
                              return ConstrainedBox(
                                constraints: BoxConstraints(
                                    minWidth: 100, maxWidth: 100),
                                child: MyMessageCard(
                                  message:
                                      demo_messages[index]['text'].toString(),
                                  date: demo_messages[index]['time'].toString(),
                                ),
                              );
                            }
                            return SenderMessageCard(
                              message: demo_messages[index]['text'].toString(),
                              date: demo_messages[index]['time'].toString(),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width,
                        constraints:
                            BoxConstraints(minHeight: 40, maxHeight: 50),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(10),
                          border: Border(
                            bottom: BorderSide(color: dividerColor),
                          ),
                          color: chatBarMessage,
                        ),
                        child: Row(
                          children: [
                            // IconButton(
                            //   onPressed: () {},
                            //   icon: const Icon(
                            //     Icons.emoji_emotions_outlined,
                            //     color: Colors.grey,
                            //   ),
                            // ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 15,
                                ),
                                child: TextField(
                                  controller: messageController,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: searchBarColor,
                                    hintText: 'Type a message',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.only(left: 20),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // message.add(messageController.text);
                              },
                              icon: const Icon(
                                Icons.send_outlined,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
