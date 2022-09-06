import 'package:chatui/colors.dart';
import 'package:flutter/material.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      constraints: BoxConstraints(
          maxWidth: 300, minWidth: 250, minHeight: 50, maxHeight: 50),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border(
            //   right: BorderSide(
            //     color: dividerColor,

            // ),
            ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
            ),
            radius: 20,
          ),
          Row(
            children: [
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.comment, color: Colors.grey),
              // ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
