import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        children: [
          Image.asset(image, width: 18, height: 18),
          const SizedBox(height: 5),
          Text(
            text,
            style: AppFonts.w500s15.copyWith(color: AppColors.tabColors),
          ),
        ],
      ),
    );
  }
}
