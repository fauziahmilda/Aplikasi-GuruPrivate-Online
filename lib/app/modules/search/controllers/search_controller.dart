import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  RxList<bool> _select = [false, false, false].obs;

  //FUNGSI TAMPILKAN POPUP FILTER MAPEL
  Future<void> showFilterMapel(BuildContext context) async {
    // List<bool> _select = List.generate(3, (_) => false);
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
                            ToggleButtons(
                              direction: Axis.vertical,
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  width: Get.width * 0.4,
                                  color: Color(0xff5D6E89),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Mata Pelajaran",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                        style:
                                            TextStyle(color: Color(0xff29313D)),
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
                                      "Kelas",
                                      style:
                                          TextStyle(color: Color(0xff29313D)),
                                    ),
                                  ),
                                ),
                              ],
                              isSelected: _select,
                              onPressed: (int index) {
                                // Obx(() => _select[0] ? x : y);
                                // Obx(() => _select[1] ? y : z);
                                // Obx(() => _select[2] ? z : x);
                                // for (var i = 0; i < _select.length; i++) {
                                //   Obx(() => _select[i] == true ? x : y);
                                //   Obx(() => _select[i] == false ? y : z);
                                // }
                              },
                            ),
                          ],
                        ),
                      ),
                      //garis
                      Container(
                        width: 3,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                      ),
                      //wadah filter, kotak warna
                      Container(
                        width: Get.width * 0.54,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          //wadah list mapel
                          child: Column(
                            children: [ListFilter()],
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
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Maaf",
                                middleText: "Layanan ini belum tersedia");
                          },
                          child: Image.asset(
                            "assets/buttons/clear-all.png",
                            width: 110,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Maaf",
                                middleText: "Layanan ini belum tersedia");
                          },
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

//FUNGSI TAMPILKAN POPUP FILTER TINGKAT
  Future<void> showFilterTingkat(BuildContext context) async {
    // List<bool> _select = List.generate(3, (_) => false);
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
                            ToggleButtons(
                              direction: Axis.vertical,
                              children: <Widget>[
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
                                        "Mata Pelajaran",
                                        style:
                                            TextStyle(color: Color(0xff29313D)),
                                      )),
                                ),
                                Container(
                                  height: 60,
                                  width: Get.width * 0.4,
                                  color: Color(0xff5D6E89),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Tingkat",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                      "Kelas",
                                      style:
                                          TextStyle(color: Color(0xff29313D)),
                                    ),
                                  ),
                                ),
                              ],
                              isSelected: _select,
                              onPressed: (int index) {
                                // Obx(() => _select[0] ? x : y);
                                // Obx(() => _select[1] ? y : z);
                                // Obx(() => _select[2] ? z : x);
                                // for (var i = 0; i < _select.length; i++) {
                                //   Obx(() => _select[i] == true ? x : y);
                                //   Obx(() => _select[i] == false ? y : z);
                                // }
                              },
                            ),
                          ],
                        ),
                      ),
                      //garis
                      Container(
                        width: 3,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                      ),
                      //wadah filter, kotak warna
                      Container(
                        width: Get.width * 0.54,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          //wadah list mapel
                          child: Column(
                            children: [ListFilter2()],
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
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Maaf",
                                middleText: "Layanan ini belum tersedia");
                          },
                          child: Image.asset(
                            "assets/buttons/clear-all.png",
                            width: 110,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Maaf",
                                middleText: "Layanan ini belum tersedia");
                          },
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

//FUNGSI TAMPILKAN POPUP FILTER KELAS
  Future<void> showFilterKelas(BuildContext context) async {
    // List<bool> _select = List.generate(3, (_) => false);
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
                            ToggleButtons(
                              direction: Axis.vertical,
                              children: <Widget>[
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
                                        "Mata Pelajaran",
                                        style:
                                            TextStyle(color: Color(0xff29313D)),
                                      )),
                                ),
                                Container(
                                  height: 60,
                                  width: Get.width * 0.4,
                                  color: Color(0xff5D6E89),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Tingkat",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                      "Kelas",
                                      style:
                                          TextStyle(color: Color(0xff29313D)),
                                    ),
                                  ),
                                ),
                              ],
                              isSelected: _select,
                              onPressed: (int index) {
                                // Obx(() => _select[0] ? x : y);
                                // Obx(() => _select[1] ? y : z);
                                // Obx(() => _select[2] ? z : x);
                                // for (var i = 0; i < _select.length; i++) {
                                //   Obx(() => _select[i] == true ? x : y);
                                //   Obx(() => _select[i] == false ? y : z);
                                // }
                              },
                            ),
                          ],
                        ),
                      ),
                      //garis
                      Container(
                        width: 3,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                      ),
                      //wadah filter, kotak warna
                      Container(
                        width: Get.width * 0.54,
                        height: Get.height * 0.55,
                        color: Color(0xff5D6E89),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          //wadah list mapel
                          child: Column(
                            children: [ListFilter3()],
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
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Maaf",
                                middleText: "Layanan ini belum tersedia");
                          },
                          child: Image.asset(
                            "assets/buttons/clear-all.png",
                            width: 110,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Maaf",
                                middleText: "Layanan ini belum tersedia");
                          },
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

  //UNTUK CLEAR BUTTON

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

class ListFilter extends StatelessWidget {
  ListFilter({super.key});
  final SearchController ctrl = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //list mapel
          Container(
            width: 200,
            height: 40,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.indeterminate_check_box,
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
    );
  }
}

class ListFilter2 extends StatelessWidget {
  ListFilter2({super.key});
  final SearchController ctrl = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //list mapel
          Container(
            width: 200,
            height: 40,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.indeterminate_check_box,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "SD",
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
                    "SMP",
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
                    "SMA",
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
                    "GAP YEAR",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListFilter3 extends StatelessWidget {
  ListFilter3({super.key});
  final SearchController ctrl = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //list mapel
          Container(
            width: 200,
            height: 40,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.indeterminate_check_box,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "10",
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
                    "11",
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
                    "12",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
