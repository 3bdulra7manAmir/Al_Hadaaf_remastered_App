import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class SportWidget extends StatelessWidget
{
  const SportWidget({super.key});

  // final String sportImgUrl;
  // final String sportName;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 38.h, //width: 121.w,  
      padding: AppPadding.symmetric.sportWidget,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.sportWidget,
        //color: AppColors.color.kBlack003,
        color: AppColors.color.kGreen001,
      ),
      child: Row(
        children:
        [
          Sizes.s7.horizontalSpace,
          const SportIcon(),
          Sizes.s9.horizontalSpace,
          const SportName(),
          Sizes.s13.horizontalSpace,
        ],
      ),
    );
  }
}


class SportIcon extends StatelessWidget
{
  const SportIcon({super.key});

  //final String sportIcon;
  

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.all.sportBall,
      decoration: BoxDecoration(
        //borderRadius: AppRadiuses.circular.sportIcon,
        color: AppColors.color.kWhite001.withValues(alpha: 0.25),
        border: Border.all(color: AppColors.color.kWhite001.withValues(alpha: 0.7)),
        shape: BoxShape.circle
      ),
      child: SvgPicture.asset(AppAssets.iconsSvg.sportSymbol),
    );
  }
}


class SportName extends StatelessWidget
{
  const SportName({super.key});

  //final String sportName;

  @override
  Widget build(BuildContext context)
  {
    return Text('كرة القدم', style: AppStyles.semiBold(),);
  }
}


