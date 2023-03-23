import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class BottomDetailNotification extends StatelessWidget {
  const BottomDetailNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Gap(
      height: 450.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24.w,
          horizontal: 30.w,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/cars.png',
                  width: 83.w,
                  height: 83.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: 'Toyota Prius',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                    TextView(
                      text: 'A134RF',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ],
                ),
              ],
            ),
            Gap(
              height: 24.h,
            ),
            TextView(
              text: 'Vehicle Document Has Been\nUpdated',
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
              color: AppColor.primary,
            ),
            Gap(
              height: 18.h,
            ),
            TextView(
              text:
                  'The document of the vehicle “Toyota Prius 2018” has been\nupdated. You can now earn mofe with thw vehicle. Please\nensure to always check the document status of your vehicle\nto prevent road arrests or temporal\nsuspension of your account.',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: AppColor.grey,
            ),
            Gap(
              height: 24.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                  width: 300.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'OK',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
