import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/About/about.dart';
import 'package:run_rider/ui/screen/home/Support/support.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class AboutCenter extends StatelessWidget {
  const AboutCenter({super.key});

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
          ClickAction(
            touch: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Support(),
                ),
              );
            },
            asset: 'assets/images/help.svg',
            text: 'Help Center',
          ),
          Gap(
            height: 34.h,
          ),
          ClickAction(
            touch: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutRider(),
                ),
              );
            },
            asset: 'assets/images/terms.svg',
            text: 'Terms and policy',
          ),
          Gap(
            height: 34.h,
          ),
          ClickAction(
            touch: () {},
            asset: 'assets/images/help.svg',
            text: 'App info',
          ),
        ]),
      ),
    );
  }
}

class ClickAction extends StatelessWidget {
  const ClickAction({
    super.key,
    required this.asset,
    required this.text,
    required this.touch,
  });

  final String asset, text;
  final VoidCallback touch;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: touch,
      child: Row(
        children: [
          SvgPicture.asset(
            asset,
            width: 24.w,
            height: 24.h,
          ),
          Gap(
            width: 15.w,
          ),
          TextView(
            text: text,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
