import 'package:another_stepper/dto/stepper_data.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_rider/ui/screen/sign_up/upload.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'done.dart';

class InfoPage extends StatelessWidget {
  InfoPage({super.key});

  List<StepperData> stepperData = [
    StepperData(
      iconWidget: Container(
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        child: Center(
          child: TextView(
            text: '1',
            fontSize: 13.sp,
            color: AppColor.white,
          ),
        ),
      ),
    ),
    StepperData(
      iconWidget: Container(
        decoration: BoxDecoration(
          color: AppColor.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        child: Center(
          child: TextView(
            text: '2',
            fontSize: 13.sp,
            color: AppColor.white,
          ),
        ),
      ),
    ),
    StepperData(
      iconWidget: Container(
        decoration: BoxDecoration(
          color: AppColor.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        child: Center(
          child: TextView(
            text: '3',
            fontSize: 13.sp,
            color: AppColor.white,
          ),
        ),
      ),
    ),
    StepperData(
      iconWidget: Container(
        decoration: BoxDecoration(
          color: AppColor.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        child: Center(
          child: TextView(
            text: '4',
            fontSize: 13.sp,
            color: AppColor.white,
          ),
        ),
      ),
    ),
    StepperData(
      iconWidget: Container(
        decoration: BoxDecoration(
          color: AppColor.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        child: Center(
          child: TextView(
            text: '5',
            fontSize: 13.sp,
            color: AppColor.white,
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 72.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(
                      text: 'Let’s Get Started',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primary,
                    ),
                    Gap(
                      height: 20.h,
                    ),
                    AnotherStepper(
                      stepperList: stepperData,
                      stepperDirection: Axis.horizontal,
                      iconHeight: 21,
                      iconWidth: 21,
                      inverted: false,
                      barThickness: 2,
                      activeIndex: 0,
                      activeBarColor: AppColor.primary,
                      inActiveBarColor: AppColor.textgrey,
                    ),
                    Gap(
                      height: 40.h,
                    ),
                    TextView(
                      text: 'Personal Information',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.primary,
                    ),
                    TextView(
                      text:
                          'Please make sure that your details match that of your\npersonal documents.',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textgrey,
                    ),
                    Gap(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/user.png',
                          height: 60.h,
                          width: 60.w,
                        ),
                        Gap(
                          width: 4.w,
                        ),
                        TextView(
                          text: 'Upload your photo*',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Gap(
                      height: 40.h,
                    ),
                    TextFormWidget(
                      text: 'First name*',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Last name*',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Other names',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Email*',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Home Address*',
                    ),
                    Gap(
                      height: 60.h,
                    ),
                    TextView(
                      text: 'Personal document',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primary,
                    ),
                    Gap(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.radio_button_checked,
                          size: 20,
                          color: AppColor.primary,
                        ),
                        Gap(
                          width: 6.w,
                        ),
                        TextView(
                          text: 'Drivers License',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Gap(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              TextView(
                                text: 'Upload your selected document*',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              Gap(
                                height: 10.h,
                              ),
                              const UploadWidget(),
                            ],
                          ),
                        ),
                        Gap(
                          width: 10.w,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              TextFormWidget(
                                text: 'Expiry Date*',
                                label: '09/23',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(
                      height: 10.h,
                    ),
                    TextView(
                      text: 'Do you have a vehicle?',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Gap(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.radio_button_checked,
                                size: 20,
                                color: AppColor.primary,
                              ),
                              Gap(
                                width: 5.w,
                              ),
                              TextView(
                                text: 'Yes',
                                fontSize: 10.sp,
                              ),
                            ],
                          ),
                        ),
                        Gap(
                          width: 5.w,
                        ),
                        Expanded(
                          flex: 0,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.radio_button_checked,
                                size: 20,
                                color: AppColor.grey,
                              ),
                              Gap(
                                width: 5.w,
                              ),
                              TextView(
                                text: 'No',
                                fontSize: 10.sp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(height: 32.h),
                    Align(
                      alignment: Alignment.center,
                      child: ButtonWidget(
                        width: 300.w,
                        color: AppColor.white,
                        buttonColor: AppColor.primary,
                        buttonText: 'NEXT',
                        buttonBorderColor: AppColor.primary,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DonePage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
