import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Wallet/Bank/bank.dart';
import 'package:run_rider/ui/screen/sign_up/done.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Widget/banknamewidget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
              'Edit Profile',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 37.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(
                height: 10.h,
              ),
              TextView(
                text: 'Personal Information',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.primary,
              ),
              TextView(
                text:
                    'Please make sure that your details match that of  your personal documents.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black,
              ),
              Gap(
                height: 21.h,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 0,
                      child: Image.asset(
                        'assets/images/user.png',
                        width: 50.w,
                        height: 50.h,
                      )),
                  Gap(
                    width: 8.w,
                  ),
                  Expanded(
                    flex: 0,
                    child: TextView(
                      text: 'Upload your photo*',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              Gap(
                height: 18.h,
              ),
              TextFormWidget(
                text: 'First name*',
              ),
              Gap(
                height: 18.h,
              ),
              TextFormWidget(
                text: 'Last name*',
              ),
              Gap(
                height: 18.h,
              ),
              TextFormWidget(
                text: 'Home address*',
              ),
              Gap(
                height: 14.h,
              ),
              TextView(
                text: 'Personal Document',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColor.primary,
              ),
              Gap(
                height: 13.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.radio_button_checked_sharp,
                    size: 20,
                    color: AppColor.primary,
                  ),
                  Gap(
                    width: 8.w,
                  ),
                  TextView(
                    text: 'Drivers License',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0XFF4D4D4D,
                    ),
                  ),
                ],
              ),
              const DocsWidget(name: 'Upload your selected document*'),
              Gap(
                height: 20.h,
              ),
              TextView(
                text: 'Bank Details',
                fontSize: 16.sp,
                color: AppColor.primary,
                fontWeight: FontWeight.w700,
              ),
              Gap(
                height: 11.h,
              ),
              BankDisplayWidget(
                assets: 'assets/images/gtlogo.png',
                bankname: 'Gt Bank Plc',
                number: '**** 3315',
                pre: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BankDetails(),
                    ),
                  );
                },
              ),
              Gap(
                height: 39.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ButtonWidget(
                  width: 300.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'PROCEED',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.r),
                        ),
                      ),
                      context: context,
                      builder: (context) => Gap(
                        height: 369.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 21.w,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Gap(
                                height: 39.h,
                              ),
                              TextView(
                                text: 'Submission Successful',
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColor.primary,
                              ),
                              TextView(
                                text:
                                    'You will be notified when your profile\ninfomation has been updated',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.center,
                                color: AppColor.black,
                              ),
                              Gap(
                                height: 18.h,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: ButtonWidget(
                                  width: 299.w,
                                  color: AppColor.white,
                                  buttonColor: AppColor.primary,
                                  buttonText: 'PROCEED',
                                  buttonBorderColor: AppColor.primary,
                                  onPressed: () {
                                    Navigator.pop(context);
                                    // Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Gap(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
