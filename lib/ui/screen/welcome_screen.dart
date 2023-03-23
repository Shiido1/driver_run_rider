import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/screen/sign_up/get_starter_screen.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';

import 'home/Dashboard/dashboard.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/runicon.png'),
                  ),
                )),
            const Gap(
              height: 36,
            ),
            ButtonWidget(
              width: 299.w,
              color: AppColor.white,
              buttonColor: AppColor.primary,
              buttonText: 'Sign in',
              buttonBorderColor: AppColor.primary,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ),
              ),
            ),
            const Gap(
              height: 16,
            ),
            ButtonWidget(
              width: 299.w,
              color: AppColor.primary,
              buttonColor: Colors.white,
              buttonText: 'Sign up',
              buttonBorderColor: AppColor.primary,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GetStarter()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
