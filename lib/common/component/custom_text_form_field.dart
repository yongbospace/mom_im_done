import 'package:flutter/material.dart';
import 'package:mom_im_done/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String> onChanged;

  const CustomTextFormField({
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.autofocus = false,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
      color: C_INPUT_BOLDER_COLOR,
      width: 1.0,
    ));

    return TextFormField(
      cursorColor: C_PRIMARY_COLOR,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: hintText,
          errorText: errorText,
          hintStyle: TextStyle(
              color: C_INPUT_BOLDER_COLOR,
              fontSize: 14.0,
              fontWeight: FontWeight.w600),
          fillColor: C_INPUT_BG_COLOR,
          filled: true,
          border: baseBorder,
          enabledBorder: baseBorder,
          focusedBorder: baseBorder.copyWith(
              borderSide: baseBorder.borderSide.copyWith(
            color: C_PRIMARY_COLOR,
          ))),
    );
  }
}
