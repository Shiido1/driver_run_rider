import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class ArrivedPage extends StatelessWidget {
  const ArrivedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          left: 26.w,
          right: 26.w,
          top: 36.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextView(
                      text: 'Trip Completed',
                      fontSize: 25.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.w700,
                    ),
                    Gap(
                      height: 6.h,
                    ),
                    TextView(
                      text: 'Collect cash from Rockdean',
                      fontSize: 18.sp,
                      color: AppColor.textgrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              Gap(
                height: 14.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    thickness: 3,
                    color: Color(0XFFF2F5F7),
                  ),
                  Gap(
                    height: 7.h,
                  ),
                  TextView(
                    text: 'Trip Details',
                    fontSize: 18.sp,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                  Gap(
                    height: 7.h,
                  ),
                  const Divider(
                    thickness: 3,
                    color: Color(0XFFF2F5F7),
                  ),
                  Gap(
                    height: 10.h,
                  ),
                  TextView(
                    text: '14 Feb\'19 at 9:42am',
                    fontSize: 16.sp,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                  Gap(
                    height: 19.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/drop.svg',
                        width: 14.w,
                        height: 17.h,
                      ),
                      Gap(
                        width: 6.w,
                      ),
                      TextView(
                        text: '1 Ash Parl, Pembroke Dock, SA72',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                    ],
                  ),
                  Gap(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/off.svg',
                        width: 14.w,
                        height: 17.h,
                      ),
                      Gap(
                        width: 6.w,
                      ),
                      TextView(
                        text: 'Gcl Plaza, Aminu Kano Crescent, Wuse 2',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                    ],
                  ),
                  Gap(
                    height: 28.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/jour.png',
                          width: 175.w,
                          height: 86.h,
                        ),
                        Gap(
                          height: 39.h,
                        ),
                        TextView(
                          text: 'NGN 1,500',
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primary,
                        ),
                        Gap(
                          height: 8.h,
                        ),
                        TextView(
                          text: 'Payment made  by Cash',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.textgrey,
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    height: 14.h,
                  ),
                  Column(
                    children: [
                      const Divider(
                        thickness: 2,
                        color: Color(0XFFDADEE3),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextView(
                                  text: '15 min',
                                  fontSize: 18.sp,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                TextView(
                                  text: 'Time',
                                  fontSize: 16.sp,
                                  color: AppColor.textgrey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: AppColor.grey,
                              thickness: 2,
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextView(
                                  text: '45 min',
                                  fontSize: 18.sp,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w400,
                                ),
                                TextView(
                                  text: 'Distance',
                                  fontSize: 16.sp,
                                  color: AppColor.textgrey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0XFFDADEE3),
                      ),
                    ],
                  ),
                  Gap(
                    height: 22.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Service Type',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Sedan',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trip Type',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Normal',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    height: 1.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 15.w,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0XFFF2F5F7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextView(
                          text: 'Your payment',
                          fontSize: 16.sp,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w600,
                        ),
                        TextView(
                          text: '\$460.75',
                          fontSize: 16.sp,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(
                height: 30.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ButtonWidget(
                  width: 200.w,
                  buttonText: 'Done',
                  color: AppColor.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  buttonBorderColor: AppColor.primary,
                  buttonColor: AppColor.primary,
                ),
              ),
              Gap(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
