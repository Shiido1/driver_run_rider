import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(
              height: 78.h,
            ),
            TextView(
              text: 'OOPS!!!',
              fontSize: 48.sp,
              fontWeight: FontWeight.w400,
            ),
            Gap(
              height: 5.h,
            ),
            TextView(
              text:
                  'Sorry the bvn you provided is not  linked to the phone number on this account, please go to your settings and change your phone number to the one linked to your BVN',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            Gap(
              height: 60.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                  width: 300.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'Ok',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
