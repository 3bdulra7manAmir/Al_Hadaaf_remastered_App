import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/constants/app_margins.dart';
import '../../../core/extensions/margin.dart';
import '../../../core/utils/logger/app_logger.dart';
import '../../../core/widgets/appbar.dart';
import '../../theme/color_manager/colors.dart';
import '../app_router.dart';
import '../app_routes.dart';


class HomeAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const HomeAppBar({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(gradient: AppColors.gradient.kBackgroundAppBarSweep),
      child: CustomAppBar(
        leading: GestureDetector(
          onTap: ()
          {
            AppLogger.info('AlHadaaf Logo Pressed...');
            AppRouter.router.goNamed(AppRoutes.home);
            // اي خدمة يا خـــــال
            // مروق علي الابلكيشن اهو
          },
          child: const AlHadaafLogo()
        ),
        leadingWidth: (112.w + 27.w),
        actions:
        [
          GestureDetector(
            onTap: () => AppLogger.info('NotificationsBell'),
            child: const AppBarBell(),
          ),
        ],
        actionsPadding: AppMargins.directional.notificationsBill,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


class AlHadaafLogo extends StatelessWidget
{
  const AlHadaafLogo({super.key,});

  @override
  Widget build(BuildContext context) =>
    Image.asset(AppAssets.iconsPNG.appLogo, fit: BoxFit.cover,).marginDirectional(start: 27.w);
}


class AppBarBell extends StatelessWidget
{
  const AppBarBell({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      width: 36.60626983642578.w, height: 36.52865982055664.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.color.kWhite001.withValues(alpha: 0.2)
      ),
      child: SvgPicture.asset(AppAssets.iconsSvg.notificationBell)
    );
  }
}

