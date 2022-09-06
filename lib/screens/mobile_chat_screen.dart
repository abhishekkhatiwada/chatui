import 'package:chatui/colors.dart';
import 'package:chatui/demo.dart';
import 'package:chatui/widgets/chat_list.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  // final Email email;
  // MobileChatScreen(this.email);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: webAppBarColor,
        title: Text(
          emails[0].name,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.video_call),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.call),
          // ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints(minHeight: 40, maxHeight: 50),
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
                      // controller: messageController,
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
                    // data.add(messageController.text);
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
    );
  }
}
