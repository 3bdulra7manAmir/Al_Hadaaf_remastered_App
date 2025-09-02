import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/i18n/generated/l10n.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/extensions/margin.dart';
import '../../../../../../core/utils/logger/app_logger.dart';
import '../../../../../../core/widgets/form/textform_field.dart';

class CustomSearchField extends StatelessWidget
{
  const CustomSearchField({super.key, required this.searchController,});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context)
  {
    return CustomTextFormField(
      controller: searchController,
      onSubmitted: (value) => AppLogger.info('A7a...'),  // اي خدمة يا خـــــال
      onChanged: (value) => AppLogger.info('A7a...'),   // عاملك حساب الاتنين
      hintText: S.current.homeSearchHint,
      hintStyle: AppStyles.thin(fontColor: AppColors.color.kWhite001.withValues(alpha: 0.48)),
      prefixIcon: 
        Padding(
          padding: EdgeInsetsDirectional.only(start: 22.w, end: 13.w),
          child: GestureDetector(
            onTap: () => AppLogger.info('Search...'),
            child: const SearchMaginifer()
            ),
        ),
      suffixIcon:
        Padding(
          padding: EdgeInsetsDirectional.only(end: 22.w),
          child: GestureDetector(
            onTap: () => AppLogger.info('FilterPin........'),
            child: const FilterPin()
          ),
        ),
    ).marginDirectional(end: 27.w);
  }
}


class SearchMaginifer extends StatelessWidget
{
  const SearchMaginifer({super.key,});

  @override
  Widget build(BuildContext context) =>
    SvgPicture.asset(AppAssets.iconsSvg.searchMaginifer, fit: BoxFit.scaleDown,);
}


class FilterPin extends StatelessWidget
{
  const FilterPin({super.key,});

  @override
  Widget build(BuildContext context) => 
    SvgPicture.asset(AppAssets.iconsSvg.filterPin, fit: BoxFit.scaleDown,);
}

