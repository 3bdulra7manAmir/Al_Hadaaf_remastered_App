import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';


class AcademyLocation extends StatelessWidget
{
  const AcademyLocation({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        SvgPicture.asset(AppAssets.iconsSvg.location),
        Sizes.s4.horizontalSpace,
        Text('الرياض', style: AppStyles.semiThin(
          fontColor: AppColors.color.kWhite001.withValues(alpha: 0.5)),
        ),
      ],
    );
  }
}