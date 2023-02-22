import 'package:flutter/material.dart';
import 'package:run_rider/ui/screen/sign_up/get_starter_screen.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/button_widget.dart';

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
            const SizedBox(
              height: 36,
            ),
            ButtonWidget(
              color: AppColor.white,
              buttonColor: AppColor.primary,
              buttonText: 'Sign in',
              buttonBorderColor: AppColor.primary,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonWidget(
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
