import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Settings/Vehicle/vehicle_update.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_round.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'moredetails.dart';

class VehicleInfo extends StatelessWidget {
  const VehicleInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Gap(
      height: 794.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: TextView(
                        text: 'Cancel',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Gap(
                      width: 55.w,
                    ),
                    TextView(
                      text: 'Vehicle Details',
                      fontSize: 20.sp,
                      color: const Color(0XFFE09236),
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                Gap(
                  height: 38.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/carbig.png',
                        fit: BoxFit.cover,
                        width: 209.w,
                        height: 121.h,
                      ),
                      Gap(
                        width: 22.w,
                      ),
                      Image.asset(
                        'assets/images/carbig.png',
                        fit: BoxFit.cover,
                        width: 209.w,
                        height: 121.h,
                      ),
                      Gap(
                        width: 22.w,
                      ),
                      Image.asset(
                        'assets/images/carbig.png',
                        fit: BoxFit.cover,
                        width: 209.w,
                        height: 121.h,
                      ),
                      Gap(
                        width: 22.w,
                      ),
                      Image.asset(
                        'assets/images/carbig.png',
                        fit: BoxFit.cover,
                        width: 209.w,
                        height: 121.h,
                      ),
                    ],
                  ),
                ),
                Gap(
                  height: 15.h,
                ),
                TextView(
                  text: 'Toyota Prius 2018',
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                Gap(
                  height: 7.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Active since',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColor.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Jul, 2015',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0XFFFF415B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 4.w,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0XFFC0E2D7),
                        borderRadius: BorderRadius.circular(
                          12.r,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextView(
                          text: '600 Trips',
                          color: AppColor.primary,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(
                  height: 13.h,
                ),
                Container(
                  width: 122.w,
                  padding: EdgeInsets.symmetric(
                    vertical: 4.w,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0XFFF34236).withOpacity(
                      0.32,
                    ),
                    border: Border.all(
                      width: 1.w,
                      color: const Color(0XFFFF415B),
                    ),
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: TextView(
                      text: 'Expired',
                      color: const Color(0XFFF34236),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Gap(
                  height: 23.h,
                ),
                MoreDetails(
                  detail: 'Car',
                  info: 'Vehicle Type',
                  pad: EdgeInsets.symmetric(
                    vertical: 30.w,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: AppColor.grey,
                ),
                MoreDetails(
                  detail: 'BMW',
                  info: 'Brand',
                  pad: EdgeInsets.symmetric(
                    vertical: 30.w,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: AppColor.grey,
                ),
                MoreDetails(
                  detail: 'ABC',
                  info: 'Model',
                  pad: EdgeInsets.symmetric(
                    vertical: 30.w,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: AppColor.grey,
                ),
                MoreDetails(
                  detail: '2017',
                  info: 'Year',
                  pad: EdgeInsets.symmetric(
                    vertical: 30.w,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: AppColor.grey,
                ),
                MoreDetails(
                  detail: 'YT1234',
                  info: 'Plate number',
                  pad: EdgeInsets.symmetric(
                    vertical: 30.w,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: AppColor.grey,
                ),
                MoreDetails(
                  detail: 'Red',
                  info: 'Color',
                  pad: EdgeInsets.symmetric(
                    vertical: 30.w,
                  ),
                ),
              ],
            ),
          ),
          Gap(
            height: 26.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.r),
                    ),
                  ),
                  context: context,
                  builder: (context) => Gap(
                    height: 275.h,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gap(
                          height: 39.h,
                        ),
                        TextView(
                          text: 'Are you sure you want to\ndelete this vehicle',
                          textAlign: TextAlign.center,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primary,
                        ),
                        Gap(
                          height: 19.h,
                        ),
                        ButtonRound(
                          width: 228.w,
                          color: AppColor.black,
                          buttonColor: AppColor.white,
                          buttonText: 'NO',
                          buttonBorderColor: AppColor.black,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Gap(
                          height: 15.h,
                        ),
                        ButtonRound(
                          width: 228.w,
                          color: AppColor.white,
                          buttonColor: const Color(0XFFF4586C),
                          buttonText: 'YES, DELETE',
                          buttonBorderColor: const Color(0XFFF4586C),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Container(
                width: 96.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 13.w,
                  vertical: 6.w,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.w,
                    color: AppColor.black,
                  ),
                  borderRadius: BorderRadius.circular(
                    14.r,
                  ),
                  color: const Color(0XFFE0BB36),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: TextView(
                    text: 'Remove',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
          Gap(
            height: 36.h,
          ),
          Align(
            alignment: Alignment.center,
            child: ButtonWidget(
              width: 297.w,
              color: AppColor.white,
              buttonColor: AppColor.primary,
              buttonText: 'Update Vehicle Documents',
              buttonBorderColor: AppColor.primary,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VehicleUpdate(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
