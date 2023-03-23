import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({
    super.key,
    required this.img,
    required this.did,
    required this.data1,
    required this.data2,
  });
  final String img, data1, data2;
  final VoidCallback did;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: did,
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: SvgPicture.asset(
              img,
              width: 24.w,
              height: 24.h,
            ),
          ),
          Gap(
            width: 10.w,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: data1,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                Gap(
                  height: 5.h,
                ),
                TextView(
                  text: data2,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF979797),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 0,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
