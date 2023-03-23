import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_rider/ui/screen/home/Dashboard/dashboard.dart';
import 'package:run_rider/ui/screen/sign_up/upload.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class DonePage extends StatefulWidget {
  const DonePage({super.key});

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
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
        appBar: AppBar(
          backgroundColor: AppColor.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: AppColor.black,
            size: 20.0,
          ),
          title: TextView(
            color: AppColor.black,
            text: 'Back',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(
                      text: 'Almost There',
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
                      text: 'Vehicle Information',
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
                      height: 40.h,
                    ),
                    TextFormWidget(
                      text: 'Vehicle Type*',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Brand*',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Model',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Year*',
                    ),
                    Gap(
                      height: 8.h,
                    ),
                    TextFormWidget(
                      text: 'Colour*',
                    ),
                    Gap(
                      height: 60.h,
                    ),
                    TextView(
                      text: 'Vehicle document',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primary,
                    ),
                    Gap(
                      height: 15.h,
                    ),
                    TextView(
                      text: 'Please Upload validated vehicle documents',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    Gap(
                      height: 10.h,
                    ),
                    const DocsWidget(name: 'Upload your selected document*'),
                    const DocsWidget(name: 'Owners certificate*'),
                    const DocsWidget(name: 'Insurance policy*'),
                    const DocsWidget(name: 'Insurance policy*'),
                    Gap(
                      height: 10.h,
                    ),
                    Gap(height: 32.h),
                    Align(
                      alignment: Alignment.center,
                      child: ButtonWidget(
                        width: 300.w,
                        color: AppColor.white,
                        buttonColor: AppColor.primary,
                        buttonText: 'SUBMIT',
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
                              height: 396.h,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline,
                                    color: AppColor.primary,
                                    size: 98,
                                  ),
                                  TextView(
                                    text: 'Submission Successful',
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.primary,
                                  ),
                                  Gap(
                                    height: 10.h,
                                  ),
                                  TextView(
                                    text:
                                        'You will be notified when to come\nfor  your vehicle verification.',
                                    fontSize: 14.sp,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Gap(height: 10.h),
                                  ButtonWidget(
                                    width: 300.w,
                                    color: AppColor.white,
                                    buttonColor: AppColor.primary,
                                    buttonText: 'PROCEED',
                                    buttonBorderColor: AppColor.primary,
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Dashboard(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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

class DocsWidget extends StatelessWidget {
  const DocsWidget({
    required this.name,
    super.key,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: name,
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
    );
  }
}
