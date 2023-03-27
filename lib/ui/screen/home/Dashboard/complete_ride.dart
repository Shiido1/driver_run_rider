import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/screen/home/Dashboard/Widget/completed_ride_sheet.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'Screen/arrived.dart';

class CompleteRide extends StatelessWidget {
  const CompleteRide({super.key});
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 20.w,
            ),
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/back.png',
                ),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          10.r,
                        ),
                        topRight: Radius.circular(
                          10.r,
                        ),
                      )),
                  height: 190.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(
                                    10.r,
                                  ),
                                  right: Radius.circular(
                                    10.r,
                                  ),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return const CompletedRideSheet();
                              });
                        },
                        child: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: AppColor.black,
                          size: 40,
                        ),
                      ),
                      Gap(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextView(
                              text: '2 min',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            Gap(
                              width: 55.w,
                            ),
                            TextView(
                              text: '0.5 mi',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            Gap(width: 83.w),
                            const Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.phone_outlined,
                                size: 30,
                                color: Color(0XFF464E65),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(
                        height: 16.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            TextView(
                              text: 'Picking up from James smith',
                              fontSize: 16.sp,
                              color: AppColor.textgrey,
                              fontWeight: FontWeight.w500,
                            ),
                            Gap(
                              height: 13.h,
                            ),
                            ButtonWidget(
                              width: 228.w,
                              buttonText: 'COMPLETED',
                              color: AppColor.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const ArrivedPage()),
                                  ),
                                );
                              },
                              buttonBorderColor: AppColor.primary,
                              buttonColor: AppColor.primary,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
