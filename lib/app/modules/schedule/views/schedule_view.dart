// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../routes/app_pages.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  ScheduleView({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff48566A),
      appBar: AppBar(
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        title: Padding(
            padding: const EdgeInsets.only(top: 10, left: 30),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/dira.png",
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Milda Maulida Fauziah",
                        style:
                            TextStyle(color: Color(0xFF29313d), fontSize: 15),
                      ),
                      Text(
                        "12 MIPA",
                        style:
                            TextStyle(color: Color(0xFF29313d), fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            )),
        actions: [
          GestureDetector(
            onTap: () => Get.offAllNamed(Routes.SETTING),
            child: Container(
              margin: const EdgeInsets.only(top: 10, right: 30),
              child: Image.asset(
                "assets/buttons/setting.png",
                width: 20,
              ),
            ),
          )
        ],
        centerTitle: false,
        backgroundColor: Color(0xFFCBAF87),
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          children: [
            Container(
              color: Color(0xFF48566A),
              width: Get.width * 100 / 100,
              height: 75,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80), topRight: Radius.circular(80)),
              child: Container(
                width: Get.width * 100 / 100,
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
          //HOME ATAS
          Container(
              alignment: Alignment.topCenter,
              height: 50,
              width: Get.width,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50)),
                child: Container(
                  height: Get.height * 15 / 100,
                  width: Get.width,
                  color: Color(0xFFCBAF87),
                ),
              )),
          //CALENDAR
          Container(
            width: Get.width,
            height: Get.height,
            margin: EdgeInsets.only(top: 80),
            color: Color(0xff48566A),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  height: Get.height * 0.18,
                  width: Get.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Container(
                            height: 50,
                            width: Get.width,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Schedule this month",
                                style: TextStyle(
                                    color: Color(0xff29313D),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width,
                          height: 1,
                          color: Colors.brown,
                        ),
                        Expanded(
                          child: Container(
                              width: Get.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.builder(
                                    itemCount: mySchedule.length,
                                    itemBuilder: (context, index) =>
                                        mySchedule[index]),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //tulisan paling atas: SCHEDULE
          Container(
            margin: EdgeInsets.only(top: 30, left: 50, right: 50),
            width: Get.width,
            height: Get.height * 5 / 100,
            decoration: BoxDecoration(
              color: Color(0xFF7E6A56),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () => Get.offAllNamed(Routes.SETTING),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        "My Schedule",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
