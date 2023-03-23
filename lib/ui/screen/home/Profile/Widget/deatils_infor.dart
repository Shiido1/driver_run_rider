import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    super.key,
    required this.ident,
    required this.value,
  });
  final String ident, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextView(
          text: ident,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: AppColor.textgrey,
        ),
        TextView(
          text: value,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: AppColor.textgrey,
        ),
      ],
    );
  }
}
