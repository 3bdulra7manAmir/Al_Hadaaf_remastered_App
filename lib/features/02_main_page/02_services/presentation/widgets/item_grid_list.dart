import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/builders/gridview_builder.dart';
import 'item_card.dart';

class ServiceGridList extends StatelessWidget
{
  const ServiceGridList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomGridbuilder(
      itemBuilder: (_, _) => const ServiceItemCard(), 
      itemCount: 12, 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisSpacing: (21.0).h,
        crossAxisSpacing: (13.0).w, childAspectRatio: (117.w / 116.h),
      ),
    );
  }
}