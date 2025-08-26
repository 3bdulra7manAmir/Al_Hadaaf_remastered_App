import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/margin.dart';

class AcademiesCard extends StatelessWidget
{
  const AcademiesCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const AcademiesCardImg(),
          Sizes.s7.verticalSpace,
          const CardDescription(),
        ],
      ),
    );
  }
}


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


class CardDescription extends StatelessWidget
{
  const CardDescription({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const AcademyNameAndRate(),
        Sizes.s6.verticalSpace,
        const AcademyLocation(),
      ],
    );
  }
}


class AcademyNameAndRate extends StatelessWidget {
  const AcademyNameAndRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text('نادى الاتحاد الرياضى', style: AppStyles.thin(fontWeight: AppFontWeights.mediumWeight),),
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


class AcademyLocation extends StatelessWidget {
  const AcademyLocation({super.key});

  @override
  Widget build(BuildContext context) {
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


