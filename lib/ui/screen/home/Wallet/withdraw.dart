import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Wallet/Bank/bank.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
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
              'Withdrawal',
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
          horizontal: 20.w,
          vertical: 10.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Available balance',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                ),
                TextView(
                  text: 'NGN 15,900',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                ),
              ],
            ),
            Gap(
              height: 25.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 0,
                  child: Image.asset(
                    'assets/images/dollar.png',
                    width: 16.w,
                    height: 38.h,
                  ),
                ),
                Gap(
                  width: 3.w,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormWidget(),
                ),
              ],
            ),
            Gap(
              height: 15.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      border: Border.all(
                        width: 1.w,
                        color: AppColor.primary,
                      ),
                    ),
                    child: Text(
                      '+10',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Gap(
                  width: 7.w,
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      border: Border.all(
                        width: 1.w,
                        color: AppColor.primary,
                      ),
                    ),
                    child: Text(
                      '+20',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Gap(
                  width: 7.w,
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.r,
                      ),
                      border: Border.all(
                        width: 1.w,
                        color: AppColor.primary,
                      ),
                    ),
                    child: Text(
                      '+50',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(
              height: 28.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 0,
                  child: Card(
                    color: const Color.fromARGB(222, 252, 216, 219),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50.r,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 10.w,
                      ),
                      child: Image.asset(
                        'assets/images/gtlogo.png',
                        width: 29.w,
                        height: 29.h,
                      ),
                    ),
                  ),
                ),
                Gap(
                  width: 8.w,
                ),
                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextView(
                        text: 'Gt Bank Plc',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                      TextView(
                        text: '**** 3315',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(
              height: 21.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const BankDetails()),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 0,
                    child: TextView(
                      text: 'Change Account',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black,
                    ),
                  ),
                  const Expanded(
                    flex: 0,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Color(0XFF979797),
                    ),
                  ),
                ],
              ),
            ),
            Gap(
              height: 25.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                  width: 200.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'WITHDRAW',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
