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

// class MyProfileScreen extends StatelessWidget {
//   MyProfileScreen({super.key});
//   int selectedIndex = 0;
//   DoctorModel model = DoctorModel(
//       name: 'Айзан',
//       surname: 'Алишерова',
//       phone: '+996 555 78 65 65',
//       photo: '');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.white,
//         title: Container(
//           alignment: Alignment.topLeft,
//           child: Text(
//             'Мой профиль',
//             style: AppFonts.w700s34.copyWith(color: AppColors.black),
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.settings_outlined,
//               color: AppColors.black,
//             ),
//           )
//         ],
//         elevation: 0,
//       ),
//       body: DefaultTabController(
//         initialIndex: 1,
//         length: 3,
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 100,
//                   decoration: const BoxDecoration(
//                     color: AppColors.lightBlue,
//                     borderRadius: BorderRadius.all(Radius.circular(50)),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(21),
//                     child: Text(
//                       'AA',
//                       style: AppFonts.w500s40.copyWith(
//                         color: AppColors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   right: 0,
//                   width: 32,
//                   height: 32,
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       color: AppColors.blue,
//                       borderRadius: BorderRadius.all(Radius.circular(16)),
//                     ),
//                     child: const Icon(
//                       Icons.camera_alt_rounded,
//                       color: AppColors.white,
//                       size: 15,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Text(
//               '${model.name} ${model.surname}',
//               style: AppFonts.w500s22,
//             ),
//             Text(
//               model.phone,
//               style: AppFonts.w400s18,
//             ),
//             TabBar(
//               labelColor: AppColors.tabColors,
//               unselectedLabelColor: AppColors.tabColors.withOpacity(0.5),
//               tabs: const [
//                 Tab(
//                   icon: ImageIcon(AssetImage(AppImages.analizy)),
//                   text: "Анализы",
//                 ),
//                 Tab(
//                   icon: ImageIcon(AssetImage(AppImages.diagnozy)),
//                   text: "Диагнозы",
//                 ),
//                 Tab(
//                   icon: ImageIcon(AssetImage(AppImages.rec)),
//                   text: "Рекомендации",
//                 ),
//               ],
//             ),
//             const Flexible(
//               child: TabBarView(
//                 children: <Widget>[
//                   TabItem(
//                     text: 'У вас пока нет добавленных результатов анализов',
//                     image: AppImages.clipboard,
//                   ),
//                   TabItem(
//                     text: 'У вас пока нет добавленных диагнозов',
//                     image: AppImages.file,
//                   ),
//                   TabItem(
//                     text: 'У вас пока нет добавленных рекомендаций',
//                     image: AppImages.page,
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: MyBottomNavBar(
//         onTap: (int index) {},
//         selectedIndex: selectedIndex,
//       ),
//     );
//   }
// }

// class TabItem extends StatelessWidget {
//   const TabItem({
//     Key? key,
//     required this.text,
//     required this.image,
//   }) : super(key: key);

//   final String text;
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 32,
//           ),
//           Image.asset(image),
//           const SizedBox(
//             height: 22,
//           ),
//           Text(text),
//           const SizedBox(
//             height: 33,
//           ),
//           Container(
//             child: Center(
//               child: TextButton(
//                   onPressed: () {},
//                   child: Row(
//                     children: [
//                       Image.asset(AppImages.adddoc),
//                       const SizedBox(width: 10),
//                       const Text('Добавить документ'),
//                     ],
//                   )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyBottomNavBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int index) onTap;
//   const MyBottomNavBar({
//     Key? key,
//     required this.selectedIndex,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: const Color(0xff333333),
//       iconSize: 24,
//       elevation: 0,
//       unselectedItemColor: AppColors.lightGrey,
//       selectedItemColor: AppColors.blue,
//       selectedFontSize: 10,
//       unselectedFontSize: 10,
//       currentIndex: selectedIndex,
//       showUnselectedLabels: true,
//       onTap: onTap,
//       type: BottomNavigationBarType.fixed,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: ImageIcon(AssetImage(AppImages.doctors)),
//           label: 'Доктора',
//         ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(
//             AssetImage(AppImages.articles),
//           ),
//           label: 'Доктора',
//         ),
//         BottomNavigationBarItem(
//           icon: SizedBox(),
//           label: '',
//         ),
//         // BottomNavigationBarItem(
//         //   icon: ImageIcon(AssetImage(AppImages.bxsAmbulanceSvg)),
//         //   label: 'Вызов',
//         // ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(AssetImage(AppImages.mydoctors)),
//           label: 'Доктора',
//         ),
//         BottomNavigationBarItem(
//           icon: ImageIcon(AssetImage(AppImages.profile)),
//           label: 'Доктора',
//         ),
//       ],
//     );
//   }
// }
