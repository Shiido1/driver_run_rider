import 'dart:ui';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Earnings/Screen/trip_history.dart';
import 'package:run_rider/ui/screen/home/Earnings/Widget/trip_info.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'trip_summary.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(
          height: 15.h,
        ),
        Text(
          'Mon, 18 Feb’19',
          style: GoogleFonts.nunitoSans(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7F7F7F),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$',
              style: GoogleFonts.nunitoSans(
                  color: AppColor.primary,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  fontFeatures: [const FontFeature.superscripts()]),
            ),
            Text(
              '154.75',
              style: GoogleFonts.nunitoSans(
                fontSize: 25.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black,
              ),
            ),
          ],
        ),
        Gap(
          height: 30.h,
        ),
        SvgPicture.asset(
          'assets/images/chart.svg',
          // width: 200.w,
          fit: BoxFit.contain,
        ),
        Gap(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: const Divider(
            thickness: 2,
            color: AppColor.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView(
                      text: '45',
                      fontSize: 18.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                    TextView(
                      text: 'Trips',
                      fontSize: 16.sp,
                      color: const Color(0XFF7F7F7F),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                const VerticalDivider(
                  color: AppColor.grey,
                  thickness: 2,
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView(
                      text: '38:30',
                      fontSize: 18.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                    TextView(
                      text: 'Online hrs',
                      fontSize: 16.sp,
                      color: const Color(0XFF7F7F7F),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                const VerticalDivider(
                  color: AppColor.grey,
                  thickness: 2,
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView(
                      text: '\$99.48',
                      fontSize: 18.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                    TextView(
                      text: 'Cash Trip',
                      fontSize: 16.sp,
                      color: const Color(0XFF7F7F7F),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Gap(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 20.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextView(
                text: 'Today\'s trips',
                fontSize: 16.sp,
                color: AppColor.black,
                fontWeight: FontWeight.w400,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TripHistory(),
                    ),
                  );
                },
                child: TextView(
                  text: 'View All Trips',
                  fontSize: 15.sp,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Column(
            children: [
              TripInfo(
                press: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(
                          bottom: 5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextView(
                              text: 'Trip Details',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center,
                              color: AppColor.white,
                            ),
                            InkWell(
                              onTap: () => Navigator.pop(ctx),
                              child: TextView(
                                text: 'Close',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.center,
                                color: AppColor.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      content: Builder(builder: (context) {
                        return const TripSummary();
                      }),
                    ),
                  );
                },
                address: 'Block 396A, Rd 36, Kubwa',
                price: 'NGN 2,900',
              ),
              const Divider(
                color: AppColor.grey,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.w,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Tue, 19 Feb',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.black,
                            ),
                            TextView(
                              text: '25 Trips',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0XFF7F7F7F),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: TextView(
                          text: '\$40',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: AppColor.grey,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.w,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Mon, 18 Feb',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.black,
                            ),
                            TextView(
                              text: '25 Trips',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0XFF7F7F7F),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: TextView(
                          text: '\$40',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: AppColor.grey,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.w,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Mon, 18 Feb',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.black,
                            ),
                            TextView(
                              text: '25 Trips',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0XFF7F7F7F),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: TextView(
                          text: '\$40',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
