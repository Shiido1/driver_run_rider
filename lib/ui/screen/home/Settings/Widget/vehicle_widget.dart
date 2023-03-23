import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/gap.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

// ignore: must_be_immutable
class VehicleWidget extends StatefulWidget {
  VehicleWidget({
    super.key,
    this.toogle = false,
    required this.assets,
    required this.show,
    required this.name,
    required this.number,
  });

  bool toogle;
  final String assets, name, number;
  final VoidCallback show;

  @override
  State<VehicleWidget> createState() => _VehicleWidgetState();
}

class _VehicleWidgetState extends State<VehicleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0,
          child: Image.asset(
            widget.assets,
            width: 80.w,
            height: 80.h,
          ),
        ),
        Gap(
          width: 16.w,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: widget.name,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              TextView(
                text: widget.number,
                color: const Color(0XFF7F7F7F),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              Gap(
                height: 5.h,
              ),
              InkWell(
                onTap: widget.show,
                child: TextView(
                  text: 'View details',
                  fontSize: 14.sp,
                  color: AppColor.primary,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Transform.scale(
          scale: 0.8,
          child: CupertinoSwitch(
            value: widget.toogle,
            onChanged: (value) => setState(() => widget.toogle = value),
            activeColor: AppColor.primary,
            trackColor: AppColor.grey,
            thumbColor: AppColor.white,
          ),
        ),
      ],
    );
  }
}
