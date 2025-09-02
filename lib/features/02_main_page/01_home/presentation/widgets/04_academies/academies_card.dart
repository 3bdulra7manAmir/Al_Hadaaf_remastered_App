import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import 'card_description.dart';
import 'card_img.dart';

class AcademiesCard extends StatelessWidget
{
  const AcademiesCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          const AcademiesCardImg(),
          Sizes.s7.verticalSpace,
          const CardDescription(),
        ],
      ),
    );
  }
}


