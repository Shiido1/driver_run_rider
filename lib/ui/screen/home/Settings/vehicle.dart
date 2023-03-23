import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Settings/Vehicle/add_vehicle.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';

import 'Widget/vehicle_info.dart';
import 'Widget/vehicle_widget.dart';

class Vehicle extends StatefulWidget {
  const Vehicle({super.key});

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
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
              'Vehicles',
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
          horizontal: 33.w,
          vertical: 18.w,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VehicleWidget(
                    toogle: true,
                    show: () {},
                    assets: 'assets/images/bike.png',
                    name: 'Bajaj Carrier',
                    number: 'Red - AB 1234',
                  ),
                  Gap(
                    height: 31.h,
                  ),
                  VehicleWidget(
                    toogle: false,
                    show: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.r),
                          ),
                        ),
                        context: context,
                        builder: (context) => Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 37.w,
                            vertical: 22.w,
                          ),
                          child: const VehicleInfo(),
                        ),
                      );
                    },
                    assets: 'assets/images/cars.png',
                    name: 'Bajaj Carrier',
                    number: 'Red - AB 1234',
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                width: 297.w,
                color: AppColor.white,
                buttonColor: AppColor.primary,
                buttonText: 'ADD VEHICLE',
                buttonBorderColor: AppColor.primary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const AddVehicle(),
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
