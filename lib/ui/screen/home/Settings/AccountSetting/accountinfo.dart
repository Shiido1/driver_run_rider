import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/sign_up/upload.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

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
        title: Text(
          'Account Settings',
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
        ),
        centerTitle: true,
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
                  TextView(
                    text:
                        'Please make sure that your details match that of  your\npersonal documents.',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
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
                  Gap(
                    height: 6.h,
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          'Your phone number cannot be changed. If you want to link another phone number to this account, please ',
                      style: GoogleFonts.poppins(
                        color: AppColor.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' contact our customer support',
                          style: GoogleFonts.poppins(
                            color: AppColor.primary,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(
                    height: 20.h,
                  ),
                  TextView(
                    text: 'Supporting Document',
                    color: AppColor.primary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  Gap(
                    height: 8.h,
                  ),
                  TextView(
                    text: 'Affidafit for Change of phone number',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  Gap(
                    height: 12.h,
                  ),
                  const UploadWidget(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                width: 300.w,
                color: AppColor.white,
                buttonColor: AppColor.primary,
                buttonText: 'Next',
                buttonBorderColor: AppColor.primary,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      content: Builder(builder: (context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_circle_outline,
                              color: AppColor.primary,
                              size: 136,
                            ),
                            Gap(
                              height: 17.h,
                            ),
                            TextView(
                              text: 'Your request has been submitted',
                              fontSize: 16.sp,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w600,
                            ),
                            Gap(
                              height: 8.h,
                            ),
                            TextView(
                              text:
                                  'You will be notified when your documents\nhas been validated',
                              textAlign: TextAlign.center,
                              fontSize: 12.sp,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                            Gap(
                              height: 18.h,
                            ),
                            ButtonWidget(
                                width: 232.w,
                                color: AppColor.white,
                                buttonColor: AppColor.primary,
                                buttonText: 'Ok',
                                buttonBorderColor: AppColor.primary,
                                onPressed: () {
                                  Navigator.pop(ctx);
                                  Navigator.pop(ctx);
                                  Navigator.pop(ctx);
                                }),
                          ],
                        );
                      }),
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
