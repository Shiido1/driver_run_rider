import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/screen/home/About/options.dart';
import 'package:run_rider/ui/screen/home/Earnings/earnings.dart';
import 'package:run_rider/ui/screen/home/Notification/notification.dart';
import 'package:run_rider/ui/screen/home/Settings/settings.dart';
import 'package:run_rider/ui/screen/home/Support/support.dart';
import 'package:run_rider/ui/screen/home/Wallet/wallet.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

import 'draw_button.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawButton(
          text: 'Wallet',
          image: 'assets/images/wallet.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Wallet(),
              ),
            );
          },
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Earning(),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawButton(
                text: 'Earnings',
                image: 'assets/images/earn.svg',
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Earning(),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  top: 0,
                ),
                child: TextView(
                  text: 'Track your trip history and\nhow much you have made',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF747474),
                ),
              ),
            ],
          ),
        ),
        DrawButton(
          text: 'Notifications',
          image: 'assets/images/notify.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'Settings',
          image: 'assets/images/settings.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'Support',
          image: 'assets/images/support.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Support(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'About',
          image: 'assets/images/about.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutCenter(),
              ),
            );
          },
        ),
      ],
    );
  }
}
