import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import 'sport_icon.dart';
import 'sport_name.dart';


class SportWidget extends StatefulWidget {
  const SportWidget({
    super.key,
    required this.sportName,
    required this.iconPath,
  });

  final String sportName;
  final String iconPath;

  @override
  State<SportWidget> createState() => _SportWidgetState();
}

class _SportWidgetState extends State<SportWidget> {
  bool isSelected = false;

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
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
              iconPath: widget.iconPath,
              isSelected: isSelected,
            ),
            Sizes.s9.horizontalSpace,
            SportName(
              sportName: widget.sportName,
              isSelected: isSelected,
            ),
            Sizes.s13.horizontalSpace,
          ],
        ),
      ),
    );
  }
}


