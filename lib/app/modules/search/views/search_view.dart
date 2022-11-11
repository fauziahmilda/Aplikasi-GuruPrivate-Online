// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_app_bazara/app/data/data_guru.dart';
// import 'package:flutter_launcher_icons/xml_templates.dart';
// import 'package:flutter_app_bazara/app/modules/kotakGuru/views/kotak_guru_view.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  SearchView({Key? key}) : super(key: key);
  final ScrollController _controller = ScrollController();

  Future<void> showFilter(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: Color(0xffE1E5EA),
            insetPadding: EdgeInsets.all(10),
            contentPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            title: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 30,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () => Get.back(),
                        child: Image.asset("assets/buttons/x2.png")),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Filter",
                        style: TextStyle(color: Color(0xff29313D)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            content: Container(
              height: Get.height * 0.55,
              width: Get.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //list filter
                      Container(
                        width: Get.width * 0.4,
                        height: Get.height * 0.52,
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: Get.width * 0.4,
                              color: Color(0xff5D6E89),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () async {
                                      await showFilter(context);
                                    },
                                    child: Text(
                                      "Mata Pelajaran",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            ),
                            Container(
                              height: 60,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xff5D6E89),
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Tingkat",
                                  style: TextStyle(color: Color(0xff29313D)),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Color(0xff5D6E89),
                                  ),
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Kelas",
                                  style: TextStyle(color: Color(0xff29313D)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //isi filter
                      Container(
                        width: 3,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                      ),
                      Container(
                        width: Get.width * 0.54,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_box,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Matematika",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.indeterminate_check_box_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Fisika",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.indeterminate_check_box_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Kimia",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.indeterminate_check_box_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Biologi",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.indeterminate_check_box_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Bahasa Indonesia",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.indeterminate_check_box_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Bahasa Inggris",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            actions: [
              Container(
                height: Get.height * 0.07,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: Get.width,
                      height: 1,
                      color: Colors.brown,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/buttons/clear-all.png",
                            width: 110,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            "assets/buttons/apply.png",
                            width: 110,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // var appBarWidth = MediaQuery.of(context).size.width;
    // var appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFE1E5EA),
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
                    // ignore: prefer_const_constructors
                    child: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 87, 87, 87)),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.searchG,
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
              onPressed: () => Get.toNamed(Routes.LOCATION),
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
                color: Color(0xFFE1E5EA),
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
                          onPressed: () => Get.toNamed(Routes.CART),
                          icon: Image.asset(
                            "assets/buttons/menu-cart.png",
                          ),
                        ),
                        IconButton(
                          iconSize: 40,
                          onPressed: () => Get.toNamed(Routes.SETTING),
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
                //tombol filter diatas
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () async {
                        await showFilter(context);
                      },
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
                //wadah putih kotak tempat list grid guru
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    color: Colors.white,
                    height: Get.height * 70 / 100,
                    width: Get.width,
                    //tempat data guru tampil
                    child: Scrollbar(
                      controller: _controller,
                      // isAlwaysShown: true,
                      thumbVisibility: true,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 20,
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 20),
                            itemCount: dataGuru.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 80,
                                height: 80,
                                color: Colors.amber,
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
