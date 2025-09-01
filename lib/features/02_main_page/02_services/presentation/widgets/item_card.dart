import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class ServiceItemCard extends StatelessWidget
{
  const ServiceItemCard({
    super.key,
    required this.serviceImg,
    required this.serviceName,
  });

  final String serviceImg;
  final String serviceName;

  @override
  Widget build(BuildContext context)
  {
    //AppLogger.info('Screen Size: ${1.sw} width + ${1.sh} height');
    return CardGradientBorder(
      child: Card(
        color: AppColors.color.kBlack004,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadiuses.circular.coacheInfoCard,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            if(1.sw > 427 && 1.sh > 952)...
            [Sizes.s26.verticalSpace,]
            else...
            [Sizes.s7.verticalSpace,],
            SvgPicture.asset(
              serviceImg, 
              width: 53.442344665527344.w, 
              height: 26.00001335144043.h,
            ),
            Sizes.s16.verticalSpace,
            Text(serviceName, style: AppStyles.thin(
              fontWeight: AppFontWeights.semiBoldWeight),
              textAlign: TextAlign.center,
            ),
            if(1.sw > 427 && 1.sh > 952)...
            [Sizes.s22.verticalSpace,]
            else...
            [Sizes.s7.verticalSpace,]
          ],
        )
        //.marginSymmetric(horizontal: 5.w),
      ),
    );
  }
}


class CardGradientBorder extends StatelessWidget
{
  const CardGradientBorder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.coacheInfoCard,
        gradient: AppColors.gradient.kServiceCardGradient
      ),
      child: child,
    );
  }
}