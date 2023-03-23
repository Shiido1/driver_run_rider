import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

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
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Text(
              'Bank Details',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 21.w,
        ),
        child: Column(
          children: [
            TextFormWidget(
              text: 'Account Number',
            ),
            Gap(
              height: 20.h,
            ),
            TextFormWidget(
              text: 'Bank Name',
            ),
            Gap(
              height: 97.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                  width: 300.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'Save',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    showDialog(
                      barrierColor: AppColor.white.withOpacity(0.9),
                      context: context,
                      builder: (ctx) => AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: AppColor.white.withOpacity(0.2),
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
                                text: 'Bank Details Updated',
                                fontSize: 24.sp,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w600,
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
                                  }),
                            ],
                          );
                        }),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
