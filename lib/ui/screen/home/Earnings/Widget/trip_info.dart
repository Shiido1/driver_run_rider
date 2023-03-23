import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class TripInfo extends StatelessWidget {
  const TripInfo({
    super.key,
    required this.address,
    required this.price,
    required this.press,
  });
  final String address, price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.w,
      ),
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: address,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.black,
                  ),
                  TextView(
                    text: price,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF7F7F7F),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 0,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: Color(0XFF979797),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
