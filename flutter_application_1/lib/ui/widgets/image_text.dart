import 'package:flutter/material.dart';

import '../../core/assets/app_images.dart';
import '../../core/theme/app_fonts.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 32,
          height: 32,
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: 18,
        ),
        Flexible(
          child: Text(
            title,
            style: AppFonts.w400s15,
          ),
        ),
      ],
    );
  }
}
