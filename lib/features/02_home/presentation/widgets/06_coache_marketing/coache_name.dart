import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_styles.dart';

class CoacheName extends StatelessWidget
{
  const CoacheName({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: 197.h - 18.h, // بحيث يطلع نصه لتحت
      left: 95.w, right: 95.w,
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