import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class TodayWidget extends StatelessWidget {
  const TodayWidget({
    super.key, required this.day, required this.totaltrip, required this.amount,
    
  });
  final String day, totaltrip, amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.w,
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: day,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black,
                  ),
                  TextView(
                    text: totaltrip,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF7F7F7F),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: TextView(
                text: amount,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
