// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/utils/logger/app_logger.dart';

class CoacheName extends StatelessWidget
{
  const CoacheName({super.key});

  @override
  Widget build(BuildContext context)
  {
    //AppLogger.info('Screen Size: ${1.sw} width + ${1.sh} height');
    final double horizontalMargin = (1.sw <= 427 && 1.sh <= 952) ? 70.w : 40.w;
    return Positioned(
      top: 197.h - 18.h, left: horizontalMargin.w, right: horizontalMargin.w,
      child: Container(
        alignment: Alignment.center, height: 40.h,
        decoration: BoxDecoration(
          color: AppColors.color.kBlack001,
          border: Border.all(color: AppColors.color.kWhite001.withValues(alpha: 0.72)),
          borderRadius: AppRadiuses.circular.coachesCard,
        ),
        child: Text('ك. احمد سيد', style: AppStyles.thin(fontWeight: AppFontWeights.mediumWeight),),
      ),
    );
  }
}

// if (1.sw <= 427 && 1.sh <= 952)...
//           [Sizes.s50.verticalSpace,]
//           else...
//           [Sizes.s43.horizontalSpace,],