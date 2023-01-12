import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    required this.mainTitle,
    this.labelText,
    this.initialText,
    this.iconPrefixData,
    this.iconSuffixData,
    this.hintText,
    this.prefixText,
    this.textInputType,
    this.inputFormatters,
    required this.onSaved,
    required this.validator,
    this.onTap,
    this.readOnly,
    this.obscureText,
    this.enabled,
    this.suffixOnTap,
    this.controller,
    this.autoValidateMode,
    this.onChanged,
    this.maxLines,
    this.disableBorder,
    this.fillColor,
    this.filled,
    this.textStyle,
    this.cursorColor,
    this.autoFocused,
    this.onFieldSubmit,
    this.prefixWidget,
  }) : super(key: key);
  final String mainTitle;
  final String? labelText;
  final String? initialText;
  final String? iconPrefixData, iconSuffixData;
  final Widget? prefixWidget;
  final String? hintText;
  final String? prefixText;
  final TextInputType? textInputType;
  final int? maxLines;
  final TextStyle? textStyle;
  final List<TextInputFormatter>? inputFormatters;
  bool? readOnly, obscureText, enabled, disableBorder, filled, autoFocused;
  FormFieldValidator<String>? validator;
  FormFieldSetter<String>? onSaved, onFieldSubmit;
  VoidCallback? onTap;
  VoidCallback? suffixOnTap;
  TextEditingController? controller;
  AutovalidateMode? autoValidateMode;
  void Function(String? text)? onChanged;
  final Color? fillColor, cursorColor;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.mainTitle,
          style: AppTextStyle.bodyRegular.copyWith(color: AppColors.primary),
        ),
        VerticalSpacer(height: 10.h),
        TextFormField(
          maxLines: widget.obscureText ?? false ? 1 : widget.maxLines ?? 1,
          enabled: widget.enabled,
          initialValue: widget.initialText,
          controller: widget.controller,
          style: widget.textStyle ?? AppTextStyle.bodyRegular,
          obscureText: (widget.obscureText ?? false) ? hidePassword : false,
          onChanged: widget.onChanged,
          cursorColor: widget.cursorColor ?? AppColors.primary,
          autovalidateMode: widget.autoValidateMode,
          keyboardType: widget.textInputType,
          inputFormatters: widget.inputFormatters,
          autofocus: widget.autoFocused ?? false,
          decoration: InputDecoration(
            fillColor: widget.fillColor,
            filled: widget.filled,
            focusedBorder: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
            hintStyle:
                AppTextStyle.bodyRegular.copyWith(color: AppColors.hintText),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical:
                    (widget.prefixWidget != null && widget.maxLines != null)
                        ? 0.h
                        : 16.h),
            enabledBorder: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
            border: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(
                color: AppColors.red,
              ),
            ),
            errorStyle: AppTextStyle.h3.copyWith(color: AppColors.red),
            alignLabelWithHint: true,
            labelText: widget.labelText,
            hintText: widget.hintText,
            prefixText: widget.prefixText,
            suffixIcon: widget.obscureText ?? false
                ? Padding(
                    padding: EdgeInsets.only(right: 4.w),
                    child: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            if (hidePassword) {
                              hidePassword = false;
                            } else {
                              hidePassword = true;
                            }
                          },
                        );
                      },
                      splashRadius: 20.h,
                      icon: Icon(
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                        color: AppColors.secondary,
                      ),
                      color: AppColors.primary,
                    ),
                  )
                : widget.iconSuffixData != null
                    ? Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: IconButton(
                          onPressed: widget.suffixOnTap ?? () {},
                          splashRadius: 20.h,
                          icon: Image.asset(
                            widget.iconSuffixData!,
                            height: 20.h,
                            width: 20.w,
                            color: AppColors.primary,
                          ),
                          color: AppColors.primary,
                        ),
                      )
                    : null,
            prefixIcon:
                widget.iconPrefixData != null && widget.prefixWidget == null
                    ? IconButton(
                        onPressed: widget.suffixOnTap ?? () {},
                        splashRadius: 20.h,
                        icon: Image.asset(
                          widget.iconPrefixData!,
                          height: 20.h,
                          width: 20.w,
                          color: AppColors.primary,
                        ),
                        color: AppColors.primary,
                      )
                    : widget.prefixWidget,
          ),
          readOnly: widget.readOnly ?? false,
          onSaved: widget.onSaved,
          validator: widget.validator,
          onTap: widget.onTap,
          onFieldSubmitted: widget.onFieldSubmit,
        ),
      ],
    );
  }
}
