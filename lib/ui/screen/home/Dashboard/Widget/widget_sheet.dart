import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_rider/ui/widgets/gap.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/text_view_widget.dart';

class WidgetSheet extends StatelessWidget {
  const WidgetSheet({
    super.key,
    required this.asset,
    required this.percent,
    required this.text,
  });
  final String asset, percent, text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 18.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.grey,
            width: 1.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              asset,
              height: 21.h,
              width: 21.w,
            ),
            Gap(
              height: 10.h,
            ),
            TextView(
              text: percent,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColor.black,
            ),
            Gap(
              height: 10.h,
            ),
            TextView(
              text: text,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
