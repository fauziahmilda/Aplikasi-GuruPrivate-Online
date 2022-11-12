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
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      onTap: () => Get.toNamed(Routes.CHAT_ROOM),
      leading: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.black26,
        child: Image.asset(
          "assets/buttons/orang.png",
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "Review orang ke ${index + 1}",
        style: TextStyle(color: Color(0xff29313D), fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Isi review ke ${index + 1}",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Color(0xff29313D),
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
                  "assets/images/t1.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
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
                              height: 50,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextButton(
                            onPressed: () => Get.offAllNamed(Routes.HOME),
                            child: Image.asset(
                              "assets/buttons/home.png",
                              height: 50,
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
          height: Get.height * 0.07,
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
                          height: 27,
                          child: Image.asset("assets/buttons/save-cart.png"),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () => Get.toNamed(Routes.CHAT_ROOM),
                        child: Container(
                          height: 27,
                          child: Image.asset("assets/buttons/chat.png"),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () => Get.toNamed(Routes.CART_EDIT),
                        child: Container(
                          height: 27,
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
        color: Colors.amber,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //TEACHER NAME
              Container(
                height: 40,
                width: Get.width,
                color: Color(0xff5D6E89),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Teacher Name",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              //TEACHER NAME SPACE
              Container(
                width: Get.width,
                height: 160,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(
                    children: [
                      //SUBJECT
                      Container(
                        height: 35,
                        width: Get.width,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Subject",
                            style: TextStyle(
                                color: Color(0xff29313D), fontSize: 17),
                          ),
                        ),
                      ),
                      //PRICE RANGE
                      Container(
                        height: 35,
                        width: Get.width,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Price Range",
                            style: TextStyle(
                                color: Color(0xff29313D), fontSize: 17),
                          ),
                        ),
                      ),
                      //RATING BINTANG
                      Container(
                        height: 35,
                        width: Get.width,
                        child: RatingBar.builder(
                          initialRating: 5,
                          minRating: 5,
                          direction: Axis.horizontal,
                          // allowHalfRating: true,
                          maxRating: 5,
                          itemSize: 15,
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
                      //SCHEDULE ICON
                      Container(
                        height: 40,
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(3)),
                                onPressed: () {},
                                child: Image.asset(
                                  "assets/buttons/calendar.png",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Look out the schedule",
                                style: TextStyle(
                                    color: Color(0xff29313D), fontSize: 17),
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
                height: 40,
                width: Get.width,
                color: Color(0xff5D6E89),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Detail Profile",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              //DETAIL PROFILE SPACE
              Container(
                width: Get.width,
                height: 150,
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
                                width: 30,
                                height: 30,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(3)),
                                  onPressed: () {},
                                  child: Icon(Icons.location_pin,
                                      color: Color(0xff7E6A56)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Look out the schedule",
                                  style: TextStyle(
                                      color: Color(0xff29313D), fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                        //ALAMAT
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            height: 35,
                            width: Get.width,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Jawa Barat",
                                style: TextStyle(
                                    color: Color(0xff29313D), fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        //garis
                        Container(
                          height: 1,
                          width: Get.width,
                          color: Colors.brown,
                        ),

                        //EDUCATIONAL BACKGOUND
                        Container(
                          height: 40,
                          width: Get.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "Educational Background",
                                  style: TextStyle(
                                      color: Color(0xff29313D), fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                                height: 20,
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
                          height: Get.height,
                          child: Text(
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff29313D)),
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lore Ipsum has been the industry's standard dummy scramble it to make a type specimen book. It has survived not only centuries, but also the leap into electronic typesetting, remaining"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //TEACHER REVIEW
              Container(
                height: 40,
                width: Get.width,
                color: Color(0xff5D6E89),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Teacher Review",
                      style: TextStyle(
                          fontSize: 18,
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
