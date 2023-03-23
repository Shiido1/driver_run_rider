import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Wallet/Bank/add_bank.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

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
          // vertical: 21.w,
        ),
        child: Column(
          children: [
            Gap(
              height: 65.h,
            ),
            TextView(
              text: 'No bank details available',
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.textgrey,
            ),
            Gap(
              height: 25.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                  width: 300.w,
                  color: AppColor.white,
                  buttonColor: AppColor.primary,
                  buttonText: 'Add Bank \u{2192}',
                  buttonBorderColor: AppColor.primary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddBank(),
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
