import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/app_background.dart';
import '../../core/widgets/navbar/nav_bar_widget.dart';
import '../../features/02_main_page/01_home/presentation/widgets/01_home_appbar/home_appbar.dart';

class MainScaffold extends StatelessWidget
{
  const MainScaffold({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) =>
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex,);

  @override
  Widget build(BuildContext context)
  {
    final currentIndex = navigationShell.currentIndex;
    return Scaffold(
      appBar: const HomeAppBar(),
      body: BackgroundColor(child: navigationShell),
      floatingActionButton: CustomButtomNavBar(
        currentIndex: currentIndex, onTap: _goBranch,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


  // PreferredSizeWidget? _buildAppBar(int index)
  // {
  //   switch (index)
  //   {
  //     case 0:
  //       return const HomeAppBar();
  //     case 1:
  //       return const HomeAppBar();
  //     // case 2:
  //     //   return const ;
  //     // case 3:
  //     //   return const ;
  //     default:
  //       return null;
  //   }
  // }


}
