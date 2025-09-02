import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/builders/listview_builder.dart';
import 'academies_card.dart';

class AcademiesCardsList extends StatelessWidget
{
  const AcademiesCardsList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (_, _) => const AcademiesCard(),
      separatorBuilder: (_, _) => Sizes.s16.horizontalSpace,
    );
  }
}