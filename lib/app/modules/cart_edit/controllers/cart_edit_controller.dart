// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CartEditController extends GetxController {
  final count = 0.obs;

  final List<Widget> mySchedule = List.generate(
    8,
    (index) => ListTile(
      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      leading: CircleAvatar(
        radius: 4,
        backgroundColor: Colors.black26,
        child: Image.asset(
          "assets/buttons/dot.png",
          fit: BoxFit.cover,
        ),
      ),
      horizontalTitleGap: 0,
      title: Text(
        "0${index + 1}/${index + 1}/2022",
        style: TextStyle(
          color: Color(0xff29313D),
          fontWeight: FontWeight.normal,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      trailing: Text(
        "Subject",
        style: TextStyle(
          color: Color(0xff29313D),
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );

  Future<void> showDelete(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color(0xffE1E5EA),
            content: Text("Are you sure want to delete this item?"),
            actions: [
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
                      "assets/buttons/book-yes.png",
                      width: 110,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.back(),
                    child: Image.asset(
                      "assets/buttons/book-cancel.png",
                      width: 110,
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }

  Future<void> showBookingDate(BuildContext context) async {
    // List<bool> _select = List.generate(3, (_) => false);
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: Color(0xff5D6E89),
            insetPadding: EdgeInsets.all(10),
            contentPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            title: Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: 50,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Color(0xff7E6A56),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 2),
                      child: TextButton(
                          onPressed: () => Get.back(),
                          child: Image.asset("assets/buttons/back2.png")),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Booking Date",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            content: Container(
              height: Get.height * 0.6,
              width: Get.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: Get.height * 0.4,
                    width: Get.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: TableCalendar(
                        rowHeight: 40,
                        calendarFormat: CalendarFormat.month,
                        rangeSelectionMode: RangeSelectionMode.toggledOn,
                        focusedDay: DateTime.now(),
                        firstDay: DateTime(2019),
                        lastDay: DateTime(2030),
                        selectedDayPredicate: (day) =>
                            isSameDay(day, DateTime.now()),
                        headerStyle: HeaderStyle(
                          headerMargin: EdgeInsets.only(bottom: 10),
                          headerPadding: EdgeInsets.zero,
                          formatButtonVisible: false,
                          decoration: BoxDecoration(
                            color: Color(0xFF7E6A56),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          titleTextStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          leftChevronIcon: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 28,
                          ),
                          rightChevronIcon: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        // Calendar Days Styling
                        daysOfWeekStyle: const DaysOfWeekStyle(
                          // Weekend days color (Sat,Sun)
                          weekendStyle: TextStyle(color: Colors.redAccent),
                        ),
                        // Calendar Dates styling
                        calendarStyle: const CalendarStyle(
                          // Weekend dates color (Sat & Sun Column)
                          weekendTextStyle: TextStyle(color: Colors.redAccent),
                          // highlighted color for today
                          todayDecoration: BoxDecoration(
                            color: Color(0xff5D6E89),
                            shape: BoxShape.circle,
                          ),
                          // highlighted color for selected day
                          selectedDecoration: BoxDecoration(
                            color: Color(0xff5D6E89),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.15,
                    width: Get.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Container(
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                            itemCount: mySchedule.length,
                            itemBuilder: (context, index) => mySchedule[index]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //bawah
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
