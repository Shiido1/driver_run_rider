import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/screen/home/Earnings/Widget/trip_info.dart';
import 'package:run_rider/ui/screen/home/Earnings/Widget/trip_summary.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class TripHistory extends StatelessWidget {
  const TripHistory({super.key});

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
            text: 'Trip History',
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 25.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Feb 2023',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
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
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
              TripInfo(
                press: () {},
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
              TripInfo(
                press: () {},
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
              Gap(
                height: 30.h,
              ),
              TextView(
                text: 'Dec 2022',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
              TripInfo(
                press: () {},
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
              TripInfo(
                press: () {},
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
              TripInfo(
                press: () {},
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
              TripInfo(
                press: () {},
                address: 'Block 396A, Rd 36, Kubwq',
                price: 'NGN 2,900',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
