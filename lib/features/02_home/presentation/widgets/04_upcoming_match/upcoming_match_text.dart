import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/margin.dart';

class UpComingMatchText extends StatelessWidget
{
  const UpComingMatchText({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Text(
      S.current.upComingMatch, 
      style: AppStyles.semiBold(fontColor: AppColors.color.kWhite001),
    ).marginDirectional(start: 27.w);
  }
}
