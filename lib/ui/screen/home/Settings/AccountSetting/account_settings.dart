import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'accountinfo.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

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
              'Account Settings',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: 'Acount Information',
                    color: AppColor.primary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Gap(
                    height: 15.h,
                  ),
                  TextFormWidget(
                    text: 'Email',
                  ),
                  Gap(
                    height: 15.h,
                  ),
                  TextFormWidget(
                    text: 'Phone Number',
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                width: 300.w,
                color: AppColor.white,
                buttonColor: AppColor.primary,
                buttonText: 'Update \u{2192}',
                buttonBorderColor: AppColor.primary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AccountInfo(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
