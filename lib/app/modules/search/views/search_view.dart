// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_launcher_icons/xml_templates.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../../routes/app_pages.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var appBarWidth = MediaQuery.of(context).size.width;
    // var appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFE1E5EA),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF584A3C),
          title: Container(
            height: 30,
            width: Get.width * 0.9,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 5),
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
                  padding: const EdgeInsets.only(right: 5),
                  child: TextButton(
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Maaf",
                          middleText: "Layanan ini belum tersedia");
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    child: Icon(Icons.arrow_back,
                        color: Color.fromARGB(255, 87, 87, 87)),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: Get.width * 0.5,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintMaxLines: 15,
                      contentPadding: EdgeInsets.only(bottom: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.location_pin),
              onPressed: () => Get.toNamed(Routes.LOCATION),
            ),
            IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () {
                Get.defaultDialog(
                    title: "Maaf", middleText: "Layanan ini belum tersedia");
              },
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
                      onPressed: () async =>
                          controller.showFilterMapel(context),
                      child: Image.asset(
                        "assets/buttons/f-mapel.png",
                        height: 30,
                      ),
                    ),
                    TextButton(
                      onPressed: () async =>
                          controller.showFilterTingkat(context),
                      child: Image.asset(
                        "assets/buttons/f-tingkat.png",
                        height: 30,
                      ),
                    ),
                    TextButton(
                      onPressed: () async =>
                          controller.showFilterKelas(context),
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
                    color: Color(0xFF7E6A56),
                    height: Get.height * 70 / 100,
                    width: Get.width,
                    //tempat data guru tampil
                    child: Scrollbar(
                      thumbVisibility: true,
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, //jumlah kolom ke pinggir
                                  childAspectRatio: 2 / 3.5),
                          itemCount: 9, //banyak data yang tampil
                          itemBuilder: (context, index) {
                            return TextButton(
                              onPressed: () => Get.toNamed(Routes.DETAIL_GURU),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: Get.width,
                                        height: Get.height * 0.12,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/t${index + 1}.png",
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                      //list info guru
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10, right: 5, left: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: Get.width,
                                              height: 20,
                                              child: Text(
                                                "Teacher Name",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF29313d)),
                                              ),
                                            ),
                                            Container(
                                              width: Get.width,
                                              height: 20,
                                              child: Text(
                                                "Subject",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF29313d)),
                                              ),
                                            ),
                                            Container(
                                              width: Get.width,
                                              height: 20,
                                              child: Text(
                                                "Rp. 100.000,00",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF29313d)),
                                              ),
                                            ),
                                            Container(
                                              width: Get.width,
                                              height: 20,
                                              child: RatingBar.builder(
                                                initialRating: 5,
                                                minRating: 5,
                                                direction: Axis.horizontal,
                                                // allowHalfRating: true,
                                                maxRating: 5,
                                                itemSize: 13,
                                                itemCount: 5,
                                                itemPadding: EdgeInsets.only(
                                                    right: 2, top: 5),
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: Color.fromARGB(
                                                      255, 129, 129, 129),
                                                  size: 10,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
