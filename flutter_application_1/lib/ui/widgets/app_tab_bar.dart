import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets/app_images.dart';
import 'package:flutter_application_1/core/theme/app_colors.dart';
import 'package:flutter_application_1/ui/widgets/tab_view.dart';

import '../../core/theme/app_fonts.dart';

class AppTabBar extends StatefulWidget {
  const AppTabBar({super.key});

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

int currentIndex = 0;

class _AppTabBarState extends State<AppTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0.5,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                indicatorColor: AppColors.tabColors,
                indicatorWeight: 3,
                labelColor: AppColors.tabColors,
                unselectedLabelColor: AppColors.lightGrey,
                tabs: [
                  Tab(
                    child: Column(
                      children: const [
                        ImageIcon(
                          AssetImage(AppImages.analizy),
                          size: 18,
                        ),
                        SizedBox(height: 5),
                        Text("Анализы", style: AppFonts.w500s15),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: const [
                        ImageIcon(
                          AssetImage(AppImages.diagnozy),
                          size: 18,
                        ),
                        SizedBox(height: 5),
                        Text("Диагнозы", style: AppFonts.w500s15),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: const [
                        ImageIcon(
                          AssetImage(AppImages.rec),
                          size: 18,
                        ),
                        SizedBox(height: 5),
                        Text("Рекомендации", style: AppFonts.w500s15),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabViewWidget(
                image: AppImages.clipboard,
                text: 'У вас пока нет добавленных результатов \nанализов'),
            TabViewWidget(
              image: AppImages.file,
              text: 'У вас пока нет добавленных диагнозов',
            ),
            TabViewWidget(
              image: AppImages.page,
              text: 'У вас пока нет добавленных диагнозов',
            ),
          ],
        ),
      ),
    );
  }
}
