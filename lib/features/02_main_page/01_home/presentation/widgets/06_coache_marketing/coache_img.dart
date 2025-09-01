import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';

class CoacheImg extends StatelessWidget
{
  const CoacheImg({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: 0, left: 0, right: 0,
      child: Container(
        height: 197.h,
        decoration: BoxDecoration(borderRadius: AppRadiuses.circular.introCardDot,),
        child: Image.asset(AppAssets.imgsPNG.sportMan,),
      ),
    );
  }
}