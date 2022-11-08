import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var appBarWidth = MediaQuery.of(context).size.width;
    // var appBarHeight = AppBar().preferredSize.height;
    var h = Get.height * 70 / 100;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFD9D9D9),
        appBar: AppBar(
          // title: const Text('Search bar'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF584A3C),
          // leading: IconButton(
          //   onPressed: () => Get.offAllNamed(Routes.HOME),
          //   icon: Icon(Icons.arrow_back),
          // ),
          // TextField(
          //   decoration: InputDecoration(
          //     fillColor: Colors.white,
          //     filled: true,
          //   ),
          // ),
          title: Expanded(
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
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 87, 87, 87)),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.location_pin),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.filter_list),
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
                color: Color(0xFFD9D9D9),
                width: Get.width * 100 / 100,
                height: 75,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
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
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/buttons/f-mapel.png",
                        height: 30,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/buttons/f-tingkat.png",
                        height: 30,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/buttons/f-kelas.png",
                        height: 30,
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                    color: Colors.white,
                    height: h * 95 / 100,
                    width: Get.width,
                    child: Scrollbar(
                        child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/t1.png",
                            width: 50,
                          ),
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
