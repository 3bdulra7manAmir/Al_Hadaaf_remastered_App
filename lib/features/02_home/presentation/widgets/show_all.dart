import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/extensions/margin.dart';


class TitleAndShowAllText extends StatelessWidget
{
  const TitleAndShowAllText({super.key, required this.title, required this.onTap, this.isBackMargin,});

  final String title;
  final void Function() onTap;
  final bool? isBackMargin;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text(title, style: AppStyles.semiBold(fontWeight: AppFontWeights.mediumWeight),),
        InkWell(
          onTap: onTap,
          child: ShowAllText(showAll: S.current.showAll,)
        )
      ],
    ).marginDirectional(start: ((isBackMargin ?? false) ? 27.w : 0.w), end: 27.w);
  }
}


class ShowAllText extends StatelessWidget
{
  const ShowAllText({super.key, required this.showAll,});

  final String showAll;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(showAll, style: AppStyles.thin(fontColor: AppColors.color.kGrey001),),
        Sizes.s8.horizontalSpace,
        SvgPicture.asset(AppAssets.iconsSvg.leftArrowGrey)
      ],
    );
  }
}

