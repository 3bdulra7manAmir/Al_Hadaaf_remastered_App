import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';

class ClubStoreCard extends StatelessWidget
{
  const ClubStoreCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      child: Column(
        children:
        [
          Image.asset(AppAssets.imgsSvg.clubStoreImg),
          Sizes.s5.verticalSpace,
          Text('حقيبة رياضية', style: AppStyles.thin(),)
        ],
      ),
    );
  }
}