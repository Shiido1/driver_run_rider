import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_rider/ui/screen/home/Wallet/withdraw.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_round.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.white,
          size: 25.0,
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Text(
              'Wallet',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.w,
                horizontal: 25.w,
              ),
              // height: 250.h,
              width: 428.w,
              // constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.r,
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/bg.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Gap(
                    height: 70.h,
                  ),
                  TextView(
                    text: 'Available Balance',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ),
                  Gap(
                    height: 1.h,
                  ),
                  TextView(
                    text: 'NGN 15,900',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                  Gap(
                    height: 10.h,
                  ),
                  Container(
                    width: 216.w,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.w,
                      horizontal: 5.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.r,
                      ),
                      color: AppColor.white,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextView(
                            text: 'Total Balance:',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primary,
                          ),
                          TextView(
                            text: ' 17,490',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primary,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 34.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonRound(
                    width: 168.w,
                    buttonText: 'WITHDRAW',
                    color: AppColor.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Withdraw(),
                        ),
                      );
                    },
                    buttonBorderColor: AppColor.primary,
                    buttonColor: AppColor.primary,
                  ),
                  Gap(
                    width: 10.w,
                  ),
                  ButtonRound(
                    width: 168.w,
                    buttonText: 'DEPOSIT',
                    color: AppColor.white,
                    onPressed: () {},
                    buttonBorderColor: AppColor.primary,
                    buttonColor: AppColor.primary,
                  ),
                ],
              ),
            ),
            Gap(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: 'April 2019',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/add.png',
                    transdetails: 'Added to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/car.png',
                    transdetails: 'Trip Deducted',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/bank.png',
                    transdetails: 'Withdraw to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/add.png',
                    transdetails: 'Added to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  TextView(
                    text: 'March 2019',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/add.png',
                    transdetails: 'Added to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/add.png',
                    transdetails: 'Added to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/bank.png',
                    transdetails: 'Added to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const TransHist(
                    date: '1 Feb\'19 • #123467',
                    imagetype: 'assets/images/add.png',
                    transdetails: 'Added to Wallet',
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransHist extends StatelessWidget {
  const TransHist({
    super.key,
    required this.imagetype,
    required this.transdetails,
    required this.date,
  });
  final String imagetype, transdetails, date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Image.asset(
              imagetype,
              width: 32.w,
              height: 32.h,
            ),
          ),
          Gap(
            width: 9.w,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transdetails,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF282F39),
                  ),
                ),
                Text(
                  date,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF7F7F7F),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 0,
              child: TextView(
                text: '\$40',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF282F39),
              )),
        ],
      ),
    );
  }
}
