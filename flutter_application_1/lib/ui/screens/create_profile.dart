import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/theme/app_fonts.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Создание профиля",
          style: AppFonts.w600s17.copyWith(color: AppColors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(
            Icons.close,
            color: AppColors.black.withOpacity(0.54),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppTextField(
              text: 'Имя',
              hintText: 'Введите ваше имя',
            ),
            const SizedBox(height: 32),
            const AppTextField(
              text: 'Фамилия',
              hintText: 'Введите вашу фамилию',
            ),
            const SizedBox(height: 149),
            Center(
              child: AppButton(
                onPressed: () {
                  //  Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const ...()));
                },
                title: "Войти",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
