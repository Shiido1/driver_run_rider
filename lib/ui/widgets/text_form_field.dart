import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_rider/ui/utils/colors.dart';
import 'package:run_rider/ui/widgets/text_view_widget.dart';

// ignore: must_be_immutable
class TextFormWidget extends StatelessWidget {
  final TextCapitalization? textCapitalization;
  final String? label;
  final String? floatingLabel;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onPasswordToggle;
  final Function(String)? onChange;
  final String? initialValue;
  final String? text;
  final FocusNode? focusNode;
  List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final AutovalidateMode? autoValidateMode;
  final bool? obscureText;
  final bool? readOnly;
  final Function()? onTapped;

  final TextInputType? keyboardType;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Key? formKey;
  final double? size;
  final int? maxline;

  TextFormWidget({
    Key? key,
    this.textCapitalization,
    this.label,
    this.floatingLabel,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.prefixWidget,
    this.validator,
    this.onPasswordToggle,
    this.initialValue,
    this.inputFormatters,
    this.controller,
    this.autoValidateMode,
    this.obscureText = false,
    this.readOnly = false,
    this.onTapped,
    this.keyboardType,
    this.suffixIconColor,
    this.prefixIconColor,
    this.onChange,
    this.formKey,
    this.size,
    this.text,
    this.maxline = 1,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: text ?? '',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColor.textgrey,
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 54.h,
          color: AppColor.textgrey.withOpacity(.1),
          child: TextFormField(
            validator: validator,
            keyboardType: keyboardType,
            focusNode: focusNode,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.w, 19.w, 20.w, 19.w),
                border: InputBorder.none,
                // labelText: label ?? '',
                // labelStyle: TextStyle(
                //     color: AppColor.textgrey,
                //     fontSize: 14.sp,
                //     fontWeight: FontWeight.w400),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10.r),
                //   borderSide: BorderSide(width: 1.w, color: AppColor.textgrey),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(10.r)),
                //   borderSide: BorderSide(width: 1.w, color: AppColor.textgrey),
                // ),
                // disabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(10.r)),
                //   borderSide: BorderSide(width: 1.w, color: Colors.grey),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(10.r)),
                //   borderSide: BorderSide(width: 1.w, color: AppColor.textgrey),
                // ),
                // errorBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10.r)),
                //     borderSide: BorderSide(width: 1.w, color: Colors.red)),
                // focusedErrorBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10.r)),
                //     borderSide:
                //         BorderSide(width: 1.w, color: Colors.redAccent)),
                prefixIcon: prefixWidget ??
                    (prefixIcon != null
                        ? IconButton(
                            onPressed: onPasswordToggle,
                            icon: Icon(
                              prefixIcon,
                              color: prefixIconColor,
                            ))
                        : null),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(1.5.w),
                  child: suffixWidget ??
                      (suffixIcon != null
                          ? IconButton(
                              onPressed: onPasswordToggle,
                              iconSize: size,
                              icon: Icon(
                                suffixIcon,
                                color: suffixIconColor,
                              ))
                          : null),
                )),
            obscureText: obscureText!,
            controller: controller,
            readOnly: readOnly!,
            onTap: onTapped,
            key: formKey,
            maxLines: maxline,
            cursorColor: AppColor.primary,
            onChanged: onChange,
          ),
        ),
      ],
    );
  }
}
