import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 25.0,
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Text(
              'Support',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
              vertical: 16.w,
            ),
            child: TextView(
              text: 'FAQ',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(
            height: 3.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
              vertical: 16.w,
            ),
            color: const Color(0XFFF8F8F8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do i book a dispatch rider?',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_up_outlined,
                  size: 30,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          Gap(
            height: 9.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
              vertical: 16.w,
            ),
            child: TextView(
              text:
                  'STEP 1\nTap the search button on your home screen\n\nSTEP 2\nInput your pick up location and your drop location\n\nSTEP 3\nEnter the info of the receiver of the  package\n\nSTEP 5\nSelect Payment method then clck ok',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(
            height: 12.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
              vertical: 16.w,
            ),
            color: const Color(0XFFF8F8F8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How do choose multiple location?',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.expand_more_outlined,
                  size: 30,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          Gap(
            height: 5.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
              vertical: 16.w,
            ),
            color: const Color(0XFFF8F8F8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How to become a runner?',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.expand_more_outlined,
                  size: 30,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          Gap(
            height: 68.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
              // vertical: 16.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Was this helpful?',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 40.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(
                          2.r,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextView(
                          text: 'Yes',
                          color: AppColor.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Gap(
                      width: 19.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: AppColor.primary,
                        ),
                        borderRadius: BorderRadius.circular(
                          2.r,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextView(
                          text: 'No',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
                      ),
                    )
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
