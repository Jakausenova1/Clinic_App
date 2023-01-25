import 'package:flutter/material.dart';
import '../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';

class TabViewWidget extends StatelessWidget {
  const TabViewWidget({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Image.asset(image),
            const SizedBox(
              height: 22,
            ),
            Text(
              text,
              style: AppFonts.w500s15.copyWith(color: AppColors.lightGrey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 33,
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.adddoc),
                    const SizedBox(width: 10),
                    const Text('Добавить документ'),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
