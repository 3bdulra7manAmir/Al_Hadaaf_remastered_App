import 'package:carousel_slider/carousel_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/color_manager/colors.dart';
import '../../constants/app_borders.dart';

class SliderDots extends StatelessWidget
{
  const SliderDots({
    super.key,
    required this.itemsLength,
    required this.currentPostition,
    required this.controller,
  });

  final int itemsLength;
  final double currentPostition;
  final CarouselSliderController controller;

  @override
  Widget build(BuildContext context)
  {
    return DotsIndicator(
      dotsCount: itemsLength,
      position: currentPostition,
      onTap: (position) => controller.animateToPage(position.toInt()),
      decorator: DotsDecorator(
        activeSize: Size(17.0.w, 6.0.h),
        activeColor: AppColors.color.kGreen001,
        activeShape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.introCardDot,),
        size: Size(6.0.w, 6.0.h),
        color: AppColors.color.kGreen001.withValues(alpha: 0.45),
        shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.introCardDot,),
      ),
    );
  }
}
