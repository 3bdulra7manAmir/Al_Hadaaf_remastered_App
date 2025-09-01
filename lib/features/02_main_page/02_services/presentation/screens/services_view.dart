import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/extensions/margin.dart';
import '../../../../../core/widgets/column.dart';
import '../../../01_home/presentation/widgets/02_search_field/search_field.dart';
import '../widgets/item_grid_list.dart';


class Services extends StatelessWidget
{
  Services({super.key});

  final TextEditingController servicesSearchController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return CustomSingleChild(
      children:
      [
        Sizes.s10.verticalSpace,
        CustomSearchField(searchController: servicesSearchController),
        Sizes.s30.verticalSpace,
        const ServiceGridList().marginDirectional(end: 20.w),
        Sizes.s120.verticalSpace,
      ]
    );
  }
}




