import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/app_button.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';
import 'create_profile.dart';

class ConfirmNumber extends StatefulWidget {
  const ConfirmNumber({super.key});

  @override
  State<ConfirmNumber> createState() => _ConfirmNumberState();
}

class _ConfirmNumberState extends State<ConfirmNumber> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 1,
        title: Center(
          child: Text(
            'Подтверждение номера',
            style: AppFonts.w600s17.copyWith(color: AppColors.black),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.bluesonki,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Введите код из смс',
              style: AppFonts.w500s22,
            ),
            const SizedBox(
              height: 145,
            ),
            Expanded(
              child: TextField(
                obscureText: true,
                style: AppFonts.w700s17,
                onChanged: (val) {
                  if (val.isNotEmpty && val.length < 4) {
                    errorText = 'Введите корректный код';
                  } else {
                    errorText = null;
                  }
                  setState(() {});
                },
                keyboardType: TextInputType.phone,
                maxLength: 4,
                decoration: InputDecoration(
                    errorText: errorText,
                    counterText: '',
                    prefix: const Text(
                      'Код   ',
                      style: AppFonts.w700s17,
                    ),
                    suffix: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.backspace_sharp)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.black)),
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.black))),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Получить код повторно',
                style: AppFonts.w400s15.copyWith(color: AppColors.bluesonki),
              ),
            ),
            const SizedBox(
              height: 108,
            ),
            AppButton(
                title: 'Далее',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateProfile(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
