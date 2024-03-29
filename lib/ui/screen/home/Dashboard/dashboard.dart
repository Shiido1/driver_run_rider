import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/screen/home/Dashboard/Screen/arrived.dart';
import 'package:run_rider/ui/screen/home/Dashboard/dashboard2.dart';
import 'package:run_rider/ui/screen/home/Profile/profile.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Widget/drawer_menu.dart';
import 'Widget/widget_sheet.dart';

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
          Container(
            padding: EdgeInsets.only(
              top: 20.w,
            ),
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/back.png',
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (scaffoldKey.currentState!.isDrawerOpen) {
                            scaffoldKey.currentState!.closeDrawer();
                          } else {
                            scaffoldKey.currentState!.openDrawer();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.w,
                            vertical: 15.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              100.r,
                            ),
                            color: AppColor.white,
                          ),
                          child: const Icon(
                            Icons.menu,
                            color: AppColor.black,
                            size: 30,
                          ),
                        ),
                      ),
                      Gap(
                        width: 39.w,
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
                                  builder: (context) => const ArrivedPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 48.w,
                                vertical: 7.w,
                              ),
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(
                                  100.r,
                                ),
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
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardFind(),
                      ),
                    );
                  },
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
                      child: Align(
                        alignment: Alignment.center,
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
                Gap(
                  height: 18.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        15.r,
                      ),
                      topRight: Radius.circular(
                        15.r,
                      ),
                    ),
                    color: AppColor.white,
                  ),
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
                          const WidgetSheet(
                            asset: 'assets/images/sub.svg',
                            percent: '95.0%',
                            text: 'Acceptance',
                          ),
                          const WidgetSheet(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
