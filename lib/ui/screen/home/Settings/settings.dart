import 'package:flutter/material.dart';
import 'package:run_rider/ui/screen/home/Profile/profile.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Settings/AccountSetting/account_settings.dart';
import 'package:run_rider/ui/screen/home/Settings/vehicle.dart';
import 'package:run_rider/ui/screen/home/Wallet/Bank/bank_page.dart';
import 'package:run_rider/ui/utils/colors.dart';

import 'Widget/setting_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
              'Settings',
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
          horizontal: 35.w,
          vertical: 16.w,
        ),
        child: Column(
          children: [
            SettingWidget(
              data2:
                  'Change your account information like\nphone number and email address',
              data1: 'Account Settings',
              did: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountSettings(),
                  ),
                );
              },
              img: 'assets/images/user.svg',
            ),
            Gap(
              height: 18.h,
            ),
            SettingWidget(
              data2:
                  'Check your vehicle status, add vehicles\nand update your vehicle documents',
              data1: 'My Vehicles',
              did: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Vehicle(),
                  ),
                );
              },
              img: 'assets/images/vehicle.svg',
            ),
            Gap(
              height: 18.h,
            ),
            SettingWidget(
              data2: 'Update your bank detail for withdrawal',
              data1: 'Bank Details',
              did: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BankPage(),
                  ),
                );
              },
              img: 'assets/images/cash.svg',
            ),
            Gap(
              height: 18.h,
            ),
            SettingWidget(
              data2: 'view and update your personal information\nand documents',
              data1: 'Personal Information',
              did: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              img: 'assets/images/contact.svg',
            ),
            Gap(
              height: 18.h,
            ),
          ],
        ),
      ),
    );
  }
}
