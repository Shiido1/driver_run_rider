import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/sign_up/done.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_form_field.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class AddVehicle extends StatelessWidget {
  const AddVehicle({super.key});

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
              'Add Vehicle',
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
          horizontal: 39.w,
          vertical: 10.w,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Vehicle Information',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.primary,
              ),
              Gap(
                height: 2.h,
              ),
              TextView(
                text:
                    'Please make sure that your details match that of  your personal documents.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              Gap(
                height: 16.h,
              ),
              TextFormWidget(
                text: 'Brand*',
              ),
              Gap(
                height: 20.h,
              ),
              TextFormWidget(
                text: 'Model*',
              ),
              Gap(
                height: 20.h,
              ),
              TextFormWidget(
                text: 'Year*',
              ),
              Gap(
                height: 20.h,
              ),
              TextFormWidget(
                text: 'Colour*',
              ),
              Gap(
                height: 31.h,
              ),
              TextView(
                text: 'Vehicle document',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColor.primary,
              ),
              Gap(
                height: 6.h,
              ),
              TextView(
                text: 'Please Upload validated vehicle documents',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              Gap(
                height: 17.h,
              ),
              const DocsWidget(name: 'Vehicle registration*'),
              const DocsWidget(name: 'Owners certificate*'),
              const DocsWidget(name: 'Insurance policy*'),
              const DocsWidget(name: 'Insurance policy*'),
              Gap(
                height: 38.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ButtonWidget(
                  width: 297.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'Submit',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.r),
                        ),
                      ),
                      context: context,
                      builder: (context) => Gap(
                        height: 507.h,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 21.w,
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(
                                height: 39.h,
                              ),
                              TextView(
                                text: 'Vehicle details have been submitted',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.primary,
                              ),
                              Gap(
                                height: 10.h,
                              ),
                              TextView(
                                text:
                                    'Visit our office to activate your vehicle',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              Gap(
                                height: 18.h,
                              ),
                              TextView(
                                text: 'Abuja office',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              Gap(
                                height: 3.h,
                              ),
                              TextView(
                                text: '3rd Floor, bassan plaza, wuse 2, Abuja',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              Gap(
                                height: 3.h,
                              ),
                              TextView(
                                text: 'View address',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.primary,
                              ),
                              Gap(
                                height: 18.h,
                              ),
                              TextView(
                                text: 'Abuja office',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              Gap(
                                height: 3.h,
                              ),
                              TextView(
                                text: '3rd Floor, bassan plaza, wuse 2, Abuja',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              Gap(
                                height: 3.h,
                              ),
                              TextView(
                                text: 'View address',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.primary,
                              ),
                              Gap(
                                height: 27.h,
                              ),
                              TextView(
                                text: 'Abuja office',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              Gap(
                                height: 3.h,
                              ),
                              TextView(
                                text: '3rd Floor, bassan plaza, wuse 2, Abuja',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              Gap(
                                height: 3.h,
                              ),
                              TextView(
                                text: 'View address',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.primary,
                              ),
                              Gap(
                                height: 35.h,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: ButtonWidget(
                                  width: 228.w,
                                  color: AppColor.white,
                                  buttonColor: AppColor.primary,
                                  buttonText: 'OK',
                                  buttonBorderColor: AppColor.primary,
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
