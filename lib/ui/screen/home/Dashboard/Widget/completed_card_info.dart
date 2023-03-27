import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/gap.dart';
import '../../../../widgets/text_view_widget.dart';

class CompletedCardInfo extends StatelessWidget {
  const CompletedCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 12.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: const Color(0XFF4D4D4D),
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: SvgPicture.asset(
              'assets/images/off.svg',
              width: 19.w,
              height: 24.h,
            ),
          ),
          Gap(
            width: 17.w,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: 'Kubwa Abuja....',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textgrey,
                ),
                TextView(
                  text: 'Desmond Eneojo',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: TextView(
              text: 'COMPLETED',
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
