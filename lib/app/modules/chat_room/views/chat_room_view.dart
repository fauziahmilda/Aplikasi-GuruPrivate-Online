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
            child: IconButton(
              onPressed: () => Get.offAllNamed(Routes.MESSAGE),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {},
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
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.white,
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
                  Icon(
                    Icons.send,
                    color: Colors.white,
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
      color: Colors.amber,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [isSender ? boxChat1() : boxChat2(), Text("18:22 PM")],
      ),
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    );
  }
}

class boxChat1 extends StatelessWidget {
  const boxChat1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5D6E89),
      padding: EdgeInsets.all(15),
      child: Text(
        "coba nih ya cona",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class boxChat2 extends StatelessWidget {
  const boxChat2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF584A3C),
      padding: EdgeInsets.all(15),
      child: Text(
        "coba nih ya cona",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
