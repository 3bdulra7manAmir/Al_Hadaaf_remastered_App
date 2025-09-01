import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/utils/logger/app_logger.dart';
import 'sport_icon.dart';
import 'sport_name.dart';


class SportWidget extends StatefulWidget
{
  const SportWidget({super.key,});

  @override
  State<SportWidget> createState() => _SportWidgetState();
}

class _SportWidgetState extends State<SportWidget> {
  bool isSelected = false;

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
      selectionAction();
    });
  }

  void selectionAction()
  {
    setState(() {
      AppLogger.info('Selected Sport/s is/are: -> ');
      // اي خدمة يا خـــــال
      // مروق عيلك
      // علشان لو هـ Fire Action بيها
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSelection,
      child: Container(
        height: 38.h,
        padding: AppPadding.symmetric.sportWidget,
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.circular.sportWidget,
          color: isSelected
              ? AppColors.color.kGreen001 // Selected
              : AppColors.color.kBlack003, // Unselected
        ),
        child: Row(
          children: [
            Sizes.s7.horizontalSpace,
            SportIcon(
              isSelected: isSelected,
            ),
            Sizes.s9.horizontalSpace,
            SportName(isSelected: isSelected,),
            Sizes.s13.horizontalSpace,
          ],
        ),
      ),
    );
  }
}


