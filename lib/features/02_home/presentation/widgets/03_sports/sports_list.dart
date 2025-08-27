import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/builders/listview_builder.dart';
import 'sport_widget.dart';


class SportsList extends StatelessWidget
{
  const SportsList({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (_, _) => SportWidget(iconPath: AppAssets.iconsSvg.sportSymbol, sportName: 'كرة القدم',), 
      separatorBuilder: (_, _) => Sizes.s6.horizontalSpace, 
      itemCount: 6, scrollDirection: Axis.horizontal,
    );
  }
}

