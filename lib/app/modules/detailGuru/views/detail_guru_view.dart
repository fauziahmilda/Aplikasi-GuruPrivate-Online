// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/detail_guru_controller.dart';

class DetailGuruView extends GetView<DetailGuruController> {
  DetailGuruView({Key? key}) : super(key: key);
  final List<Widget> myReview = List.generate(
    8,
    (index) => ListTile(
      onTap: () => Get.toNamed(Routes.CHAT_ROOM),
      leading: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.black26,
        child: Image.asset(
          "assets/buttons/orang.png",
          fit: BoxFit.cover,
        ),
      ),
      minLeadingWidth: 2,
      minVerticalPadding: 15,
      title: Text(
        "Review orang ke ${index + 1}",
        style: TextStyle(color: Color(0xff29313D), fontWeight: FontWeight.bold),
      ),
      subtitle: Wrap(
        children: [
          Container(
            height: 20,
            width: Get.width,
            child: RatingBar.builder(
              initialRating: 5,
              minRating: 5,
              direction: Axis.horizontal,
              // allowHalfRating: true,
              maxRating: 5,
              itemSize: 13,
              itemCount: 5,
              itemPadding: EdgeInsets.only(right: 2, top: 5),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
                size: 10,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Text(
              "Isi review ke ${index + 1}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xff29313D),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff5D6E89),
        flexibleSpace: Container(
          height: 50,
          color: Color(0xff29313D),
        ),
        titleSpacing: 0,
        elevation: 0,
        toolbarHeight: Get.height * 0.35,
        actions: [
          Stack(
            children: [
              Container(
                width: Get.width,
                child: Image.asset(
                  "assets/images/detailguru.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 40,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextButton(
                            onPressed: () => Get.back(),
                            child: Image.asset(
                              "assets/buttons/back.png",
                              height: 40,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextButton(
                            onPressed: () => Get.offAllNamed(Routes.HOME),
                            child: Image.asset(
                              "assets/buttons/home.png",
                              height: 40,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: Get.height * 0.095,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: Get.width * 0.9,
                height: 1,
                color: Colors.brown,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () {
                          Get.defaultDialog(
                              content: Image.asset(
                                "assets/buttons/ceklis.png",
                                width: 60,
                              ),
                              title: "Berhasil ditambah",
                              backgroundColor: Color(0xffE1E5EA));
                        },
                        child: Container(
                          height: 33,
                          child: Image.asset("assets/buttons/save-cart.png"),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () => Get.toNamed(Routes.CHAT_ROOM),
                        child: Container(
                          height: 33,
                          child: Image.asset("assets/buttons/chat.png"),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () => Get.toNamed(Routes.CART_EDIT),
                        child: Container(
                          height: 33,
                          child: Image.asset("assets/buttons/book-now.png"),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //TEACHER NAME
              Container(
                height: 20,
                width: Get.width,
                color: Color(0xff5D6E89),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Teacher Name",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              //TEACHER NAME SPACE
              Container(
                width: Get.width,
                height: 90,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(
                    children: [
                      //SUBJECT
                      Container(
                        height: 25,
                        width: Get.width,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Subject",
                            style: TextStyle(
                                color: Color(0xff29313D), fontSize: 15),
                          ),
                        ),
                      ),
                      //PRICE RANGE
                      Container(
                        height: 25,
                        width: Get.width,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Price Range",
                            style: TextStyle(
                                color: Color(0xff29313D), fontSize: 15),
                          ),
                        ),
                      ),
                      //SCHEDULE ICON
                      Container(
                        height: 30,
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 25,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(3)),
                                onPressed: () {
                                  Get.defaultDialog(
                                      title: "Maaf",
                                      middleText: "Layanan ini belum tersedia");
                                },
                                child: Image.asset(
                                  "assets/buttons/calendar.png",
                                  color: Color(0xff7E6A56),
                                  height: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Look out the schedule",
                                style: TextStyle(
                                    color: Color(0xff29313D), fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //DETAIL PROFILE
              Container(
                height: 20,
                width: Get.width,
                color: Color(0xff5D6E89),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Detail Profile",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              //DETAIL PROFILE SPACE
              Container(
                width: Get.width,
                height: 130,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        //LOCATION
                        Container(
                          height: 40,
                          width: Get.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25,
                                height: 25,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(top: 3)),
                                  onPressed: () {
                                    Get.defaultDialog(
                                        title: "Maaf",
                                        middleText:
                                            "Layanan ini belum tersedia");
                                  },
                                  child: Icon(Icons.location_pin,
                                      color: Color(0xff7E6A56)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Location",
                                  style: TextStyle(
                                      color: Color(0xff29313D), fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        //ALAMAT
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Container(
                            height: 25,
                            width: Get.width,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Jawa Barat",
                                style: TextStyle(
                                    color: Color(0xff29313D), fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        //garis
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            height: 1,
                            width: Get.width,
                            color: Colors.brown,
                          ),
                        ),

                        //EDUCATIONAL BACKGOUND
                        Container(
                          height: 30,
                          width: Get.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "Educational Background",
                                  style: TextStyle(
                                      color: Color(0xff29313D), fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                                height: 18,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(3)),
                                  onPressed: () {},
                                  child: Image.asset(
                                    "assets/buttons/drop.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: Get.width,
                          height: 150,
                          child: Text(
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff29313D)),
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lore Ipsum has been the industry's standard dummy scramble it to make a type specimen book. It has survived not only centuries, but also the leap into electronic typesetting, remaining"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //TEACHER REVIEW
              Container(
                height: 20,
                width: Get.width,
                color: Color(0xff5D6E89),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Teacher Review",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              //TEACHER REVIEW SPACE
              Container(
                width: Get.width,
                height: 150,
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                    child: ListView.builder(
                        itemCount: myReview.length,
                        itemBuilder: (context, index) => myReview[index])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
