import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/screen/sign_up/phone_verification_screen.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import '../../widgets/button_widget.dart';

class GetStarter extends StatelessWidget {
  const GetStarter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 106.w, horizontal: 26.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
              text:
                  'Earn extra money delivering parcels/packages with just a few easy steps.',
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: AppColor.primary,
            ),
            Gap(
              height: 26.h,
            ),
            TextView(
              text: 'Let’s Get Started',
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
            ),
            Gap(
              height: .6.h,
            ),
            TextView(
              text: 'Please enter your correct details.',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.textgrey,
            ),
            Gap(
              height: 32.h,
            ),
            TextFormWidget(
              text: 'Select your country',
            ),
            Gap(
              height: 32.h,
            ),
            TextFormWidget(
              text: 'Phone Number',
            ),
            Gap(
              height: 32.h,
            ),
            TextFormWidget(
              text: 'Email',
            ),
            Gap(height: 52.h),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                width: 299.w,
                color: AppColor.white,
                buttonColor: AppColor.primary,
                buttonText: 'PROCEED',
                buttonBorderColor: AppColor.primary,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PhoneVerificationScreen()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
