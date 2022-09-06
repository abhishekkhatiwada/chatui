import 'package:chatui/colors.dart';
import 'package:chatui/demo.dart';
import 'package:chatui/screens/mobile_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: webAppBarColor,
        centerTitle: false,
        title: const Text(
          'ChatApp',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: const Icon(Icons.more_vert, color: Colors.black),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          //constraints: BoxConstraints(minWidth: 250, maxWidth: 300),
          child: Consumer(builder: (context, ref, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: emails.length,
              itemBuilder: (context, index) {
                final message = emails[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MobileChatScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(
                            emails[index].name,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              emails[index].subject,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(emails[index].image),
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
            );
          }),
        ),
      ),
    );
  }
}
