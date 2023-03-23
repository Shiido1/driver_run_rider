import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class OTPVerify extends StatelessWidget {
  const OTPVerify({super.key});

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
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32.w,
            vertical: 14.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(height: 104.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextView(
                    text:
                        'An OTP (one time password) was sent to your phone number linked to the BVN',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.textgrey,
                  ),
                  Gap(
                    height: 21.h,
                  ),
                  TextView(
                    text: 'Enter OTP',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primary,
                  ),
                  Gap(
                    height: 13.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierColor: AppColor.white.withOpacity(0.9),
                        context: context,
                        builder: (ctx) => AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: AppColor.white.withOpacity(0.2),
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
                                  text: 'Bank Details Updated',
                                  fontSize: 24.sp,
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.w600,
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
                                    Navigator.pop(ctx);
                                  },
                                ),
                              ],
                            );
                          }),
                        ),
                      );
                    },
                    child: Gap(
                      child: PinCodeTextField(
                        // controller: verification_codeController,
                        backgroundColor: AppColor.transparent,
                        keyboardType: TextInputType.number,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderWidth: 0.01,
                          fieldWidth: 50.w,
                          fieldHeight: 82.h,
                          activeFillColor: AppColor.white,
                          inactiveColor: AppColor.black,
                          inactiveFillColor: AppColor.textgrey.withOpacity(.1),
                        ),
                        // validator: AppValidator.validateOTP(),
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        // onCompleted: (v) {
                        //   verification_codeController.text = v;
                        // },
                        onChanged: (value) {},
                        beforeTextPaste: (text) {
                          return true;
                        },
                        autoDisposeControllers: false,
                        appContext: context,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
