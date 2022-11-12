// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/chat_room_controller.dart';

class ChatRoomView extends GetView<ChatRoomController> {
  const ChatRoomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE1E5EA),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/msg-profile.png",
                width: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Teacher Name'),
                    Text(
                      "Status Activated",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF584A3C),
          leadingWidth: 30,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: InkWell(
              onTap: (() => Get.back()),
              child: Icon(
                Icons.arrow_back,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: () => Get.offAllNamed(Routes.PHONE),
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        bottomNavigationBar: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: BottomAppBar(
            child: Container(
              height: 75,
              width: Get.width,
              color: Color(0xFF5D6E89),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.emoji_emotions),
                    color: Colors.white,
                    onPressed: () {
                      // controller.isShowEmoji.toggle();
                    },
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: Get.width * 0.7,
                    height: 35,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Type something',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.file_upload_rounded,
                              color: Color(0xFF584A3C)),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    color: Colors.white,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
        body: Container(
            child: ListView(
          children: [
            itemChat(
              isSender: true,
            ),
            itemChat(
              isSender: false,
            ),
          ],
        )));
  }
}

class itemChat extends StatelessWidget {
  const itemChat({
    Key? key,
    required this.isSender,
  }) : super(key: key);

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE1E5EA),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: isSender
                ? BoxDecoration(
                    color: Color(0xFF5D6E89),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  )
                : BoxDecoration(
                    color: Color(0xFF7E6A56),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
            padding: EdgeInsets.all(15),
            child: isSender
                ? Text(
                    "Ini text dari user segini aja",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                : Text(
                    "Ini text dari guru ya begini",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
          ),
          Text("18:22 PM")
        ],
      ),
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}
