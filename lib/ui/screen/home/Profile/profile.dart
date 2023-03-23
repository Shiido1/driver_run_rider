import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Profile/edit_profile.dart';
import 'package:run_rider/ui/screen/home/Wallet/Bank/bank.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Widget/banknamewidget.dart';
import 'Widget/deatils_infor.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.white,
          size: 25.0,
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Text(
              'Profile',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.w,
                horizontal: 25.w,
              ),
              transform: Matrix4.translationValues(0.0, 0.0, 0.0),
              height: 96.h,
              width: 428.w,
              // constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    20.r,
                  ),
                  bottomRight: Radius.circular(
                    20.r,
                  ),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/green.png',
                  ),
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -75.0, 0.0),
              padding: EdgeInsets.only(
                top: 1.w,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/imgbg.png',
                    width: 108.w,
                    height: 108.h,
                  ),
                  TextView(
                    text: 'James Smith',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Gap(
                    height: 6.h,
                  ),
                  TextView(
                    text: 'Joined Since July, 2019',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  Gap(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: const Icon(
                            Icons.star,
                            color: Color(0XFFFFB800),
                            size: 8,
                          ),
                          half: const Icon(
                            Icons.star_half,
                            color: Color(0XFFFFB800),
                            size: 8,
                          ),
                          empty: const Icon(
                            Icons.star_outline,
                            color: Color(0XFFFFB800),
                            size: 8,
                          ),
                        ),
                        onRatingUpdate: (value) {},
                      ),
                      TextView(
                        text: '4.9',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: 'Trip Details',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0XFFDADEE3),
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Total Trips',
                    value: '3,210',
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Accepted Trips',
                    value: '3250',
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Canceled Trips',
                    value: '40',
                  ),
                  Gap(
                    height: 23.h,
                  ),
                  TextView(
                    text: 'Personal Info',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0XFFDADEE3),
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'First name',
                    value: 'David',
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Last name',
                    value: 'Olottah',
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Other names',
                    value: 'Onuche',
                  ),
                  Gap(
                    height: 23.h,
                  ),
                  TextView(
                    text: 'Contact Details',
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0XFFDADEE3),
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Phone number',
                    value: '+234 803 444 7766',
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Email',
                    value: 'david.o.erasmus@gmail.com',
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  const DetailInfo(
                    ident: 'Address',
                    value: 'Block 396A, ROad 36, Phase 3...',
                  ),
                  Gap(
                    height: 23.h,
                  ),
                  TextView(
                    text: 'Bank Details',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: AppColor.primary,
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
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ButtonWidget(
                      width: 300.w,
                      color: AppColor.white,
                      buttonColor: AppColor.primary,
                      buttonText: 'EDIT PROFILE \u{2192}',
                      buttonBorderColor: AppColor.primary,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfile(),
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
          ],
        ),
      ),
    );
  }
}
