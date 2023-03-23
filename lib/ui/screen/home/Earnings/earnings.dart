import 'dart:ui';

import 'package:fine_bar_chart/fine_bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Dashboard/dashboard.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Widget/today_chart.dart';
import 'Widget/weekly_chart.dart';

class Earning extends StatefulWidget {
  const Earning({super.key});

  @override
  State<Earning> createState() => _EarningState();
}

class _EarningState extends State<Earning> {
  // List<double> barValue = [50, 30, 90, 60, 80, 25];

  List<Color> barColors = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.black,
    Colors.purple
  ];

  List<String> bottomBarName = ["M", "T", "W", "T", "F", "S", "S"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 25.0,
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: TextView(
            text: 'Earnings',
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColor.white,
            bottom: TabBar(
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              // indicator: color: AppColor.primary,
              indicatorColor: AppColor.primary,
              labelStyle: const TextStyle(
                  fontFamily: 'Robotomono',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400),
              unselectedLabelColor: AppColor.grey,
              labelColor: AppColor.primary,
              tabs: [
                Tab(
                  child: Text(
                    'TODAY',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'WEEKLY',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: TodayChart(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: WeeklyChart(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
