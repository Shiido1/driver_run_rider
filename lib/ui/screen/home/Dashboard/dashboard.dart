import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_rider/ui/screen/home/Earnings/earnings.dart';
import 'package:run_rider/ui/screen/home/Profile/profile.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Widget/drawer_menu.dart';

// this is to send the user to
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: AppColor.white,
        width: 311.w,
        child: ListView(
          children: [
            Gap(
              height: 30.h,
            ),
            Container(
              height: 100.h,
              decoration: const BoxDecoration(
                color: AppColor.white,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Image.asset(
                        'assets/images/user.png',
                        height: 97.h,
                        width: 97.w,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextView(
                            text: 'James Smith',
                            fontSize: 16.sp,
                            color: AppColor.black,
                            fontWeight: FontWeight.w700,
                          ),
                          Gap(
                            height: 5.h,
                          ),
                          TextView(
                            text: 'Edit Profile',
                            fontSize: 14.sp,
                            color: AppColor.primary,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(
              height: 20.h,
            ),
            const Divider(
              color: AppColor.grey,
              // height: 15,
              thickness: 5,
            ),
            Gap(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: const DrawerMenu(),
            ),
            Gap(
              height: 60.h,
            ),
            Column(
              children: [
                TextView(
                  text: 'Don\'t have a vehicle?',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.black,
                ),
                Gap(
                  height: 10.h,
                ),
                ButtonWidget(
                  width: 200.w,
                  buttonText: 'Request for vehicle',
                  color: AppColor.white,
                  onPressed: () {},
                  buttonBorderColor: AppColor.primary,
                  buttonColor: AppColor.primary,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height * 0.3,
            child: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/back.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: FloatingActionButton(
              backgroundColor: AppColor.white,
              onPressed: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                } else {
                  scaffoldKey.currentState!.openDrawer();
                }
              },
              child: const Icon(
                Icons.menu,
                color: AppColor.black,
                size: 30,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Earning(),
                    ),
                  );
                },
                child: Container(
                  height: 90.h,
                  width: 197.w,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextView(
                        text: 'Todays Earning',
                        fontSize: 12.sp,
                        color: AppColor.white,
                        fontWeight: FontWeight.w400,
                      ),
                      TextView(
                        text: 'NGN 154.75',
                        fontSize: 18.sp,
                        color: AppColor.white,
                        fontWeight: FontWeight.w600,
                      ),
                      TextView(
                        text: '40 trips',
                        fontSize: 12.sp,
                        color: AppColor.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            left: 200,
            child: Container(
              width: 83.w,
              height: 83.w,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(
                  100.r,
                ),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.white,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(
                    100.r,
                  ),
                ),
                child: Center(
                  child: TextView(
                    text: 'GO',
                    fontSize: 22.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: DraggableScrollableSheet(
              maxChildSize: 0.7,
              minChildSize: 0.4,
              builder: (_, controller) {
                return Material(
                  elevation: 10,
                  color: AppColor.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.w,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: AppColor.grey,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 40,
                                color: AppColor.black,
                              ),
                            ),
                            Gap(
                              width: 50.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: TextView(
                                text: 'You\'re offline',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          WidgetSheet(
                            asset: 'assets/images/sub.svg',
                            percent: '95.0%',
                            text: 'Acceptance',
                          ),
                          WidgetSheet(
                            asset: 'assets/images/star.svg',
                            percent: '4.75',
                            text: 'Rating',
                          ),
                          const WidgetSheet(
                            asset: 'assets/images/cx.svg',
                            percent: '2.0%',
                            text: 'Cancelleation',
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetSheet extends StatelessWidget {
  const WidgetSheet({
    super.key,
    required this.asset,
    required this.percent,
    required this.text,
  });
  final String asset, percent, text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 18.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.grey,
            width: 1.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              asset,
              height: 21.h,
              width: 21.w,
            ),
            Gap(
              height: 10.h,
            ),
            TextView(
              text: percent,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColor.black,
            ),
            Gap(
              height: 10.h,
            ),
            TextView(
              text: text,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
