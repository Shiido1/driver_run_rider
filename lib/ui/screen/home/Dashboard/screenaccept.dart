import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Dashboard/Screen/arrived.dart';
import 'package:run_rider/ui/screen/home/Dashboard/dashboard2.dart';
import 'package:run_rider/ui/screen/home/Dashboard/drive_arrived.dart';
import 'package:run_rider/ui/screen/home/Profile/profile.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Widget/drawer_menu.dart';

class ScreenAccept extends StatelessWidget {
  const ScreenAccept({super.key});
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
                    top: 10.w,
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
                        width: 67.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.h,
                        ),
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
                              horizontal: 22.w,
                              vertical: 15.w,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(
                                100.r,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/cancel.svg'),
                                Gap(
                                  width: 6.w,
                                ),
                                Text(
                                  'No Thanks',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
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
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  width: 428.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                  ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Gap(
                        height: 14.h,
                      ),
                      TextView(
                        text: '25 min',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                      Gap(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView(
                              text: '\$12.50',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.textgrey,
                            ),
                            TextView(
                              text: '4.5 km',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.textgrey,
                            ),
                            TextView(
                              text: '3.5',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.textgrey,
                            ),
                          ],
                        ),
                      ),
                      Gap(
                        height: 18.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/drop.svg',
                            width: 14.w,
                            height: 17.h,
                          ),
                          Gap(
                            width: 6.w,
                          ),
                          TextView(
                            text: '1 Ash Park, Pembroke Dock, SA72',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black,
                          ),
                        ],
                      ),
                      Gap(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/off.svg',
                            width: 14.w,
                            height: 17.h,
                          ),
                          Gap(
                            width: 6.w,
                          ),
                          TextView(
                            text: 'Gcl Plaza, Aminu Kano Crescent, Wuse 2',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black,
                          ),
                        ],
                      ),
                      Gap(
                        height: 20.h,
                      ),
                      ButtonWidget(
                        width: 228.w,
                        buttonText: 'TAP TO ACCEPT',
                        color: AppColor.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DriveArrive(),
                            ),
                          );
                        },
                        buttonBorderColor: AppColor.primary,
                        buttonColor: AppColor.primary,
                      ),
                      Gap(
                        height: 23.h,
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
