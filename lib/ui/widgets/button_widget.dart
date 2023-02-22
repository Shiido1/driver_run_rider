import 'package:flutter/material.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      this.buttonText,
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

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints.tightFor(width: double.infinity, height: 50),
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side:
                          BorderSide(color: buttonBorderColor!, width: 1)))),
          child: TextView(
                  text: buttonText!,
                  fontSize: 16,
                  color: color,
                  fontWeight: FontWeight.w500,
                )),
    );
  }
}
