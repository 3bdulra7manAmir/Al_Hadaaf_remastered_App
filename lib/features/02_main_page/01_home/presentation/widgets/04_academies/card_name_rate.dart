import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/extensions/margin.dart';


class AcademyNameAndRate extends StatelessWidget
{
  const AcademyNameAndRate({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text('نادى الاتحاد الرياضى', style: AppStyles.thin(fontWeight: AppFontWeights.mediumWeight),),
        Sizes.s66.horizontalSpace,
        Row(
          children:
          [
            SvgPicture.asset(AppAssets.iconsSvg.star),
            Sizes.s4.horizontalSpace,
            Text('4.7', style: AppStyles.thin(fontWeight: AppFontWeights.mediumWeight),),
          ],
        ),
      ],
    ).marginDirectional(start: 3.w, end: 6.w);
  }
}
