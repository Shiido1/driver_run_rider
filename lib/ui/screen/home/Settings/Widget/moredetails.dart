import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({
    super.key,
    required this.info,
    required this.detail,
    required this.pad,
  });
  final String info, detail;
  final EdgeInsets pad;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextView(
          text: info,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0XFF4D4D4D),
        ),
        TextView(
          text: detail,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0XFF4D4D4D),
        ),
      ],
    );
  }
}
