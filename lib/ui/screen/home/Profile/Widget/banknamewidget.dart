import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class BankDisplayWidget extends StatelessWidget {
  const BankDisplayWidget({
    super.key,
    required this.assets,
    required this.bankname,
    required this.number,
    required this.pre,
  });
  final String assets, bankname, number;
  final VoidCallback pre;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pre,
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Card(
              color: const Color.fromARGB(222, 252, 216, 219),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  50.r,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.w,
                ),
                child: Image.asset(
                  assets,
                  width: 29.w,
                  height: 29.h,
                ),
              ),
            ),
          ),
          Gap(
            width: 11.w,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: bankname,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.black,
                ),
                TextView(
                  text: number,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 0,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 30,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
    );
  }
}
