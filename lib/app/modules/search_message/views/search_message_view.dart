import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_message_controller.dart';

import '../../../routes/app_pages.dart';

class SearchMessageView extends GetView<SearchMessageController> {
  SearchMessageView({Key? key}) : super(key: key);
  final List<Widget> myChat = List.generate(
    20,
    (index) => ListTile(
      onTap: () => Get.offAllNamed(Routes.CHAT_ROOM),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.black26,
        child: Image.asset(
          "assets/images/msg-profile.png",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "Orang ke ${index + 1}",
        style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Isi pesan ke ${index + 1}",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Column(
        children: [
          Text(
            "15:25 PM",
            style: TextStyle(color: Colors.white),
          ),
          Chip(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            label: Text("3"),
          ),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF48566A),
      appBar: AppBar(
        elevation: 0,
        title: Container(
          child: Expanded(
            child: Container(
              height: 35,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              // margin: EdgeInsets.only(right: 16),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
              ),
              child: Expanded(
                child: TextField(
                  controller: controller.searchC,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF584A3C),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.MESSAGE),
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Get.offAllNamed(Routes.SEARCH_MESSAGE),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          children: [
            Container(
              color: Color(0xFF48566A),
              height: 75,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80), topRight: Radius.circular(80)),
              child: Container(
                width: Get.width,
                height: 75,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  //ICON ICON
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        iconSize: 40,
                        onPressed: () => Get.offAllNamed(Routes.MESSAGE),
                        icon: Image.asset(
                          "assets/buttons/menu-msg.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 50,
                        onPressed: () => Get.offAllNamed(Routes.SEARCH),
                        icon: Image.asset("assets/buttons/menu-scr.png"),
                      ),
                      IconButton(
                        iconSize: 60,
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        icon: Image.asset("assets/buttons/menu-home.png"),
                      ),
                      IconButton(
                        iconSize: 50,
                        onPressed: () => Get.offAllNamed(Routes.CART),
                        icon: Image.asset(
                          "assets/buttons/menu-cart.png",
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () => Get.offAllNamed(Routes.SETTING),
                        icon: Image.asset(
                          "assets/buttons/menu-profile.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: myChat.length,
          itemBuilder: (context, index) => myChat[index]),
    );
  }
}
