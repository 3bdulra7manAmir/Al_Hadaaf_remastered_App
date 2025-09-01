import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';

class AcademiesCardImg extends StatelessWidget
{
  const AcademiesCardImg({super.key,});

  //final String imgUrl;

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: AppRadiuses.circular.introCardDot,
      child: Image.asset(AppAssets.imgsPNG.longShotRunningKids, fit: BoxFit.cover,),
    );
  }
}
