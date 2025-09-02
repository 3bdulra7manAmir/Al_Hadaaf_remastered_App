import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../../config/i18n/generated/l10n.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';


class CoacheInfoCard extends StatelessWidget
{
  const CoacheInfoCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: 197.h + 9.h,
      left: 0, right: 0,
      child: Container(
        alignment: Alignment.center, height: 91.h,
        decoration: BoxDecoration(
          color: AppColors.color.kBlack003,
          borderRadius: AppRadiuses.circular.coacheInfoCard,
        ),
        child: const CoacheInfo(),
      ),
    );
  }
}


class CoacheInfo extends StatelessWidget {
  const CoacheInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Sizes.s24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
          [
            Text(S.current.trainingLevel, style: AppStyles.thin(),),
            Text(S.current.nationality, style: AppStyles.thin(),),
            Text(S.current.birthDate, style: AppStyles.thin(),),
          ],
        ),
        Sizes.s9.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('محترف', style: AppStyles.thin(fontColor: AppColors.color.kGreen001),),
            Row(children: [Sizes.s35.horizontalSpace, Image.asset(AppAssets.iconsPNG.egyptFlag,),],),
            Text('12-1-1990', style: AppStyles.thin(fontColor: AppColors.color.kGreen001),),
          ],
        ),
      ],
    );
  }
}


