import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/theme/app_fonts.dart';

import '../../core/assets/app_images.dart';
import '../widgets/app_button.dart';
import '../widgets/image_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Профиль",
          style: AppFonts.w600s17.copyWith(color: AppColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Зачем нужен профиль?", style: AppFonts.w500s22),
            const SizedBox(height: 20),
            const ImageAndText(
                image: AppImages.hospital,
                title: "Записывайтесь на прием к самым лучшим специалистам"),
            const SizedBox(height: 30),
            const ImageAndText(
                image: AppImages.clipboard,
                title: "Записывайтесь на прием к самым лучшим специалистам"),
            const SizedBox(height: 30),
            const ImageAndText(
                image: AppImages.speech,
                title: "Записывайтесь на прием к самым лучшим специалистам"),
            const SizedBox(height: 30),
            const ImageAndText(
                image: AppImages.bell,
                title: "Записывайтесь на прием к самым лучшим специалистам"),
            const SizedBox(height: 20),
            Center(
              child: AppButton(
                onPressed: () {},
                title: "Войти",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
