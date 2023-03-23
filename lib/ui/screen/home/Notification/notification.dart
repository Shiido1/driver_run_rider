import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'View/bottom_info.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
              'Notification',
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
          vertical: 17.w,
          horizontal: 36.w,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.r),
                    ),
                  ),
                  context: context,
                  builder: (context) => const BottomDetailNotification(),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: 'Document Verification\nSuccessful',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  Image.asset(
                    'assets/images/cone.png',
                    width: 14.w,
                    height: 14.h,
                  ),
                ],
              ),
            ),
            Gap(
              height: 15.h,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: 'Document Verification\nSuccessful',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  Image.asset(
                    'assets/images/uncone.png',
                    width: 14.w,
                    height: 14.h,
                  ),
                ],
              ),
            ),
            Gap(
              height: 15.h,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    text: 'Document Verification\nSuccessful',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  Image.asset(
                    'assets/images/uncone.png',
                    width: 14.w,
                    height: 14.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
