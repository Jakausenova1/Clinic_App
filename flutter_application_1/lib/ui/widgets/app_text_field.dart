import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.text,
    required this.hintText,
  }) : super(key: key);

  final String text;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppFonts.w400s15,
        ),
        TextField(
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkGrey),
            ),
            hintText: hintText,
            hintStyle: AppFonts.w400s17.copyWith(color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}
