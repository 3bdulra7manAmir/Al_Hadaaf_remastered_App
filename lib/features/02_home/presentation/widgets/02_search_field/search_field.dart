import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/i18n/generated/l10n.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../../../core/widgets/form/textform_field.dart';

class CustomSearchField extends StatelessWidget
{
  const CustomSearchField({super.key, required this.searchController,});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      controller: searchController,
      hintText: S.current.homeSearchHint,
      hintStyle: AppStyles.thin(fontColor: AppColors.color.kWhite001.withValues(alpha: 0.48)),
      prefixIcon: 
        Padding(
          padding: EdgeInsetsDirectional.only(start: 22.w, end: 13.w),
          child: SvgPicture.asset(AppAssets.iconsSvg.searchMaginifer, fit: BoxFit.scaleDown,),
        ),
      suffixIcon:
        Padding(
          padding: EdgeInsetsDirectional.only(end: 22.w),
          child: SvgPicture.asset(AppAssets.iconsSvg.filterPin, fit: BoxFit.scaleDown,),
        ),
    ).marginDirectional(end: 27.w);
  }
}
