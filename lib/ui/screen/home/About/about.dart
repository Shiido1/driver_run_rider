import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class AboutRider extends StatelessWidget {
  const AboutRider({super.key});

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
              'About',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 16.w,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextView(
            text: 'Mission',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
          Gap(
            height: 3.h,
          ),
          TextView(
            text:
                'We are people of innovative tech company with a\nburning desire to impact businesses and\n individuals positively. Our solution seeks to solve the\nexisting local logistics difficulties  that challenges\nthe business operation of MSME’s and other forms\nof business.',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          Gap(
            height: 19.h,
          ),
          TextView(
            text: 'Vision',
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
          Gap(
            height: 3.h,
          ),
          TextView(
            text:
                'Inspired by the challenges that acompany\nexchange/movements  of goods between\nbusinesses and individual, we are seeking to\ncreate an enabling platform where independent\nvehicle owners (cars,  motor bikes, etc) can be\nengaged to provide a quick an reliable logistics\nservices for SME’s or other form of businesses .',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ]),
      ),
    );
  }
}
