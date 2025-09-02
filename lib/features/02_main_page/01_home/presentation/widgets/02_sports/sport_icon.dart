import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_paddings.dart';

class SportIcon extends StatelessWidget {
  const SportIcon({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.all.sportBall,
      decoration: BoxDecoration(
        color: AppColors.color.kWhite001.withValues(alpha: isSelected ? 0.25 : 0.1),
        border: Border.all(
          color: AppColors.color.kWhite001.withValues(alpha: isSelected ? 0.7 : 0.3),
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(AppAssets.iconsSvg.sportSymbol),
    );
  }
}

