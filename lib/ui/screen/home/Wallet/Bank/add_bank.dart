import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Wallet/Bank/otp_verify.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'error.dart';

class AddBank extends StatelessWidget {
  const AddBank({super.key});

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
              'Add Bank Details',
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
          vertical: 21.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormWidget(
              text: 'Account Number',
            ),
            Gap(
              height: 20.h,
            ),
            TextFormWidget(
              text: 'Bank Name',
            ),
            Gap(
              height: 20.h,
            ),
            TextFormWidget(
              text: 'BVN',
            ),
            Gap(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ErrorPage(),
                  ),
                );
              },
              child: TextView(
                text:
                    'An OTP will be sent to the phone number linked to your BVN',
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(
              height: 44.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                  width: 300.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'Save',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const OTPVerify(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
