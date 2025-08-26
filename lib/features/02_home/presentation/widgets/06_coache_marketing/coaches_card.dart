import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_styles.dart';


class CoachesCard extends StatelessWidget
{
  const CoachesCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children:
      [
        Container(
          width: 190.w, height: 197.h,
          decoration: BoxDecoration(borderRadius: AppRadiuses.circular.introCardDot,),
          child: Image.asset(AppAssets.imgsPNG.sportMan),
        ),
        Container(
          width: 112.w, height: 36.h,
          decoration: BoxDecoration(
            borderRadius: AppRadiuses.circular.coachesCard,
          ),
          child: Text('ك. احمد سيد', style: AppStyles.thin(fontWeight: AppFontWeights.mediumWeight),),
        )
      ],
    );
  }
}