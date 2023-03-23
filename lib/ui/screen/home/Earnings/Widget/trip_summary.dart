import 'dart:ui';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class TripSummary extends StatelessWidget {
  const TripSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 15.w,
      ),
      width: 421.w,
      decoration: BoxDecoration(
        color: const Color(0XFFFCFCFC),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextView(
            text: '14 Feb\'19 at 9:42am',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
          Gap(
            height: 30.h,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/images/st.svg'),
              Gap(
                width: 5.w,
              ),
              TextView(
                text: '1 Ash Park, Pembroke Dock, SA72',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          Gap(
            height: 10.h,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/images/en.svg'),
              Gap(
                width: 5.w,
              ),
              TextView(
                text: 'Gcl Plaza, Aminu Kano Crescent, Wuse 2',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          Gap(
            height: 30.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/jour.png',
              width: 183.w,
              height: 89.h,
            ),
          ),
          Gap(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
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
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
          Gap(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.center,
            child: TextView(
              text: 'Payment made Successfully by Cash',
              fontSize: 18.sp,
              color: const Color(0XFF7F7F7F),
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(
            height: 20.h,
          ),
          const Divider(
            thickness: 1,
            color: AppColor.grey,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView(
                      text: '15 min',
                      fontSize: 18.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                    TextView(
                      text: 'Time',
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
                      text: '45 mi',
                      fontSize: 18.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                    TextView(
                      text: 'Distance',
                      fontSize: 16.sp,
                      color: const Color(0XFF7F7F7F),
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: AppColor.grey,
          ),
          Gap(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 15.w,
            ),
            decoration: const BoxDecoration(
              color: AppColor.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Service Type',
                  fontSize: 15.sp,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                ),
                TextView(
                  text: 'Sedan',
                  fontSize: 15.sp,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          Gap(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 15.w,
            ),
            decoration: const BoxDecoration(
              color: AppColor.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Trip Type',
                  fontSize: 15.sp,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                ),
                TextView(
                  text: 'Normal',
                  fontSize: 15.sp,
                  color: AppColor.black,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          Gap(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 15.w,
            ),
            decoration: const BoxDecoration(
              color: AppColor.grey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Your payment',
                  fontSize: 16.sp,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w600,
                ),
                TextView(
                  text: 'NGN 2,900',
                  fontSize: 16.sp,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          Gap(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
