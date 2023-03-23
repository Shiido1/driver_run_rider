import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class UploadWidget extends StatelessWidget {
  const UploadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0,
          child: SvgPicture.asset(
            'assets/images/path.svg',
            width: 16.w,
            height: 16.h,
          ),
        ),
        Gap(
          width: 5.w,
        ),
        Expanded(
          flex: 0,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 15.h,
            ),
            width: 196.w,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(
                5.r,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextView(
                  text: '(PDF,Jpg, PNG)',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColor.textgrey,
                ),
                SvgPicture.asset(
                  'assets/images/percent.svg',
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
