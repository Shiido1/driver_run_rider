import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/sign_up/done.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class VehicleUpdate extends StatelessWidget {
  const VehicleUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 25.0,
        ),
        title: Text(
          'Vehicle Documents Update',
          style: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 33.w,
          vertical: 18.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: 'Upload the correct/updated\nvehicle document.',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primary,
                  ),
                  Gap(
                    height: 9.h,
                  ),
                  TextView(
                    text: 'Please Uploadvalidated vehicle documents',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  Gap(
                    height: 30.h,
                  ),
                  const DocsWidget(name: 'Vehicle registration*'),
                  const DocsWidget(name: 'Owners certificate*'),
                  const DocsWidget(name: 'Insurance policy*'),
                  const DocsWidget(name: 'Insurance policy*'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                width: 297.w,
                color: AppColor.white,
                buttonColor: AppColor.primary,
                buttonText: 'SUBMIT',
                buttonBorderColor: AppColor.primary,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      content: Builder(builder: (context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_circle_outline,
                              color: AppColor.primary,
                              size: 136,
                            ),
                            Gap(
                              height: 17.h,
                            ),
                            TextView(
                              text: 'Your request has been submitted',
                              fontSize: 16.sp,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w600,
                            ),
                            Gap(
                              height: 8.h,
                            ),
                            TextView(
                              text:
                                  'You will be notified when your documents\nhas been validated',
                              textAlign: TextAlign.center,
                              fontSize: 12.sp,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                            Gap(
                              height: 18.h,
                            ),
                            ButtonWidget(
                                width: 232.w,
                                color: AppColor.white,
                                buttonColor: AppColor.primary,
                                buttonText: 'Ok',
                                buttonBorderColor: AppColor.primary,
                                onPressed: () {
                                  Navigator.pop(ctx);
                                  Navigator.pop(ctx);
                                }),
                          ],
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
