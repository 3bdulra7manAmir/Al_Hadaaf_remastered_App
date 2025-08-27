import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import 'card_location.dart';
import 'card_name_rate.dart';

class CardDescription extends StatelessWidget
{
  const CardDescription({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const AcademyNameAndRate(),
        Sizes.s6.verticalSpace,
        const AcademyLocation(),
      ],
    );
  }
}

