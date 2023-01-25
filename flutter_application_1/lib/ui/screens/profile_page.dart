import 'package:flutter/material.dart';
import '../../core/assets/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';
import '../../models/doctor_models.dart';
import '../widgets/app_tab_bar.dart';
import 'articles.dart';
import 'doctors.dart';
import 'my_doctors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<DoctorModel> doctors = [
    DoctorModel(
        name: 'Айжан',
        surname: 'Алишерова',
        phone: '+996 555 77 88 11',
        photo: ''),
    DoctorModel(
        name: 'Иса', surname: 'Ахунбаев', phone: '+996 999 999 990', photo: ''),
  ];

  // int currentTab = 0;
  // final List<Widget> screens = [
  //   Doctors(),
  //   Articles(),
  //   MyDoctors(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Мой профиль',
          style: AppFonts.w700s34.copyWith(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Center(
            child: Stack(
              children: [
                doctors[0].photo == ''
                    ? Container(
                        padding: const EdgeInsets.all(26),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB6D8FF),
                        ),
                        child: Text(
                          '${doctors[0].name[0]}${doctors[0].surname[0]}',
                          style: AppFonts.w500s40.copyWith(color: Colors.white),
                        ),
                      )
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(doctors[0].photo),
                        ),
                      ),
                Positioned(
                  bottom: -6,
                  right: -6,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Container(
                      padding: const EdgeInsets.all(9),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff4A86CC)),
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        color: AppColors.white,
                        size: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '${doctors[0].name} ${doctors[0].surname}',
            style: AppFonts.w500s22.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            doctors[0].phone,
            style: AppFonts.w400s18.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 15,
          ),
          const Flexible(child: AppTabBar())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          AppImages.call,
          color: AppColors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 83,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white.withOpacity(0.92),
          items: const [
            BottomNavigationBarItem(
              label: 'Доктора',
              icon: ImageIcon(
                AssetImage(
                  AppImages.doctors,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Статьи',
              icon: ImageIcon(
                AssetImage(
                  AppImages.articles,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Мои доктора',
              icon: ImageIcon(
                AssetImage(
                  AppImages.mydoctors,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Профиль',
              icon: ImageIcon(
                AssetImage(
                  AppImages.profile,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
