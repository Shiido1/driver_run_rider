import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class ButtonRound extends StatelessWidget {
  const ButtonRound(
      {super.key,
      this.buttonText,
      this.width,
      this.color,
      this.buttonColor,
      this.isLight = true,
      this.buttonBorderColor,
      this.onPressed,
      this.isLoading = false});
  final String? buttonText;
  final Color? color;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final bool? isLight;
  final bool? isLoading;
  final Function()? onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: 50.h),
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor!),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  50.r,
                ),
                side: BorderSide(
                  color: buttonBorderColor!,
                  width: 1,
                ),
              ),
            ),
          ),
          child: TextView(
            text: buttonText!,
            fontSize: 14.sp,
            color: color,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
