import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'card_info.dart';

class DetailsRide extends StatelessWidget {
  const DetailsRide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.w,
      ),
      height: 529.h,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            10.r,
          ),
          topRight: Radius.circular(
            10.r,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColor.black,
                      size: 50,
                    ),
                  ),
                ),
                Gap(
                  width: 78.w,
                ),
                Expanded(
                  flex: 0,
                  child: TextView(
                    text: '2 min',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Gap(
                  width: 55.w,
                ),
                Expanded(
                  flex: 0,
                  child: TextView(
                    text: '0.5 mi',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Gap(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.w,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 0,
                  child: SvgPicture.asset(
                    'assets/images/drop.svg',
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
                        text: 'Pick Up',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.textgrey,
                      ),
                      TextView(
                        text: 'James Smith',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ButtonWidget(
                    width: 118.w,
                    buttonText: 'Contact',
                    color: AppColor.white,
                    onPressed: () {},
                    buttonBorderColor: AppColor.primary,
                    buttonColor: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
          Gap(
            height: 10.h,
          ),
          const CardInfo(),
          Gap(
            height: 7.h,
          ),
          const CardInfo(),
          Gap(
            height: 7.h,
          ),
          const CardInfo(),
          Gap(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidget(
                width: 171.w,
                buttonText: 'Arrived',
                color: AppColor.white,
                onPressed: () {},
                buttonBorderColor: AppColor.primary,
                buttonColor: AppColor.primary,
              ),
              ButtonWidget(
                width: 171.w,
                buttonText: 'Cancel',
                color: AppColor.white,
                onPressed: () {},
                buttonBorderColor: AppColor.red,
                buttonColor: AppColor.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
