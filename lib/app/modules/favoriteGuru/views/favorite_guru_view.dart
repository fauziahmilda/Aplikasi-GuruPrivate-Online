// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/favorite_guru_controller.dart';

class FavoriteGuruView extends GetView<FavoriteGuruController> {
  const FavoriteGuruView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD9D9D9),
        appBar: AppBar(
          title: const Text('Favorite'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF7E6A56),
          leading: IconButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            icon: Icon(Icons.arrow_back),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              color: Color(0xFF48566A),
              height: Get.height * 90 / 100,
              width: Get.width,
              //tempat data guru tampil
              child: Scrollbar(
                // isAlwaysShown: true,
                thumbVisibility: true,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          crossAxisCount: 3, //jumlah kolom ke pinggir
                          mainAxisSpacing: 10,
                          childAspectRatio: 2 / 3.5),
                      itemCount: 9, //banyak data yang tampil
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: Get.width,
                                  height: Get.height * 0.12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/t${index + 1}.png",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, right: 5, left: 5),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: Get.width,
                                        height: 20,
                                        child: Text("Teacher Name"),
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 20,
                                        child: Text("Subject"),
                                      ),
                                      Container(
                                        width: Get.width,
                                        height: 20,
                                        child: Text("Rp. 100.000,00"),
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
                                          itemPadding:
                                              EdgeInsets.only(right: 2, top: 5),
                                          itemBuilder: (context, _) => Icon(
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
                        );
                      }),
                ),
              ),
            ),
          ),
        ));
  }
}
