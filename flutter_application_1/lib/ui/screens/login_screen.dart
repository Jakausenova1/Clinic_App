import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/core/theme/app_fonts.dart';
import 'package:flutter_application_1/ui/screens/create_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/app_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String? errorText;
TextEditingController controller = TextEditingController();
int code = Random().nextInt(8999) + 1000;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Вход",
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Войти", style: AppFonts.w700s34),
            const SizedBox(height: 50),
            const Text("Номер телефона", style: AppFonts.w400s15),
            TextField(
              controller: controller,
              style: AppFonts.w700s17,
              onChanged: (val) {
                if (val.isNotEmpty && val.length < 9) {
                  errorText = "Введите корректные данные";
                } else {
                  errorText = null;
                }
                setState(() {});
              },
              keyboardType: TextInputType.phone,
              maxLength: 9,
              decoration: InputDecoration(
                hintStyle: AppFonts.w700s17,
                errorText: errorText,
                counterText: "",
                prefix: const Text("0", style: AppFonts.w700s17),
                hintText: "___ __ __ __",
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: AppColors.darkGrey),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: AppColors.darkGrey),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.",
              style: AppFonts.w400s15,
            ),
            const SizedBox(height: 108),
            Center(
              child: AppButton(
                  title: "Далее",
                  onPressed: () async {
                    SharedPreferences.setMockInitialValues({});
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString("phone", controller.text);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          code.toString(),
                          style:
                              AppFonts.w600s18.copyWith(color: AppColors.white),
                        ),
                      ),
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CreateProfile())); //поменять на 3 скрин
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
