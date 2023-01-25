// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/core/theme/app_fonts.dart';
// import 'package:flutter_application_1/drop_down_button.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({super.key});

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Доктора',
          style: AppFonts.w700s34.copyWith(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.notifications_outlined,
            color: Color(0xff757575),
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 200,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 36,
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          prefix: const Icon(
                            Icons.search_outlined,
                            color: Color(0xffDADADA),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(11, 7, 0, 7),
                          hintText: 'Поиска врача',
                          hintStyle: const TextStyle(
                              fontSize: 17, color: Color(0xff8E8E93)),
                          filled: true,
                          fillColor: const Color(0xff8E8E93).withOpacity(0.12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Очистить',
                          style: TextStyle(fontSize: 15),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DoctorChip(
                        onPressed: () {
                          currentIndex = 0;
                          setState(() {});
                        },
                        text: 'Аритмологи',
                        isActive: currentIndex == 0),
                    const SizedBox(
                      width: 15,
                    ),
                    DoctorChip(
                        onPressed: () {
                          currentIndex = 1;
                          setState(() {});
                        },
                        text: 'Кардиологи',
                        isActive: currentIndex == 1),
                    const SizedBox(
                      width: 15,
                    ),
                    DoctorChip(
                        onPressed: () {
                          currentIndex = 2;
                          setState(() {});
                        },
                        text: 'Кардиохирурги',
                        isActive: currentIndex == 2),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.sort),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Сортировать:',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // AppSortButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorChip extends StatelessWidget {
  const DoctorChip({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  final Function() onPressed;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              width: 2,
              color:
                  isActive ? const Color(0xff4A86CC) : const Color(0xff757575),
            ),
          ),
          backgroundColor: isActive ? const Color(0xff4A86CC) : Colors.white),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: isActive ? Colors.white : const Color(0xff757575)),
      ),
    );
  }
}
