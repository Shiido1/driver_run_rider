import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/colors.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_view_widget.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 72.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Arrived',
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 104.h),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(
                      text: 'Phone Number Verification',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primary,
                    ),
                    TextView(
                      text: 'Enter the OTP sent to your phone number',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textgrey,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      child: PinCodeTextField(
                        // controller: verification_codeController,
                        backgroundColor: AppColor.transparent,
                        keyboardType: TextInputType.number,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        length: 5,
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
                    SizedBox(height: 32.h),
                    ButtonWidget(
                      color: AppColor.white,
                      buttonColor: AppColor.primary,
                      buttonText: 'PROCEED',
                      buttonBorderColor: AppColor.primary,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneVerificationScreen()),
                      ),
                    )
                  ]),
            ],
          ),
        ));
  }
}
