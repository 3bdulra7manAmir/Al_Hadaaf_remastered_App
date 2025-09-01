import 'package:flutter/material.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_styles.dart';

class SportName extends StatelessWidget
{
  const SportName({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Text(
      'كرة القدم',
      style: AppStyles.semiBold(fontColor: 
        isSelected 
          ? AppColors.color.kWhite001
          : AppColors.color.kWhite001,)
    );
  }
}