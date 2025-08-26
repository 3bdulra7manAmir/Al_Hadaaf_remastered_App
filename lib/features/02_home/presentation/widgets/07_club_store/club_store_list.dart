import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/builders/listview_builder.dart';
import 'club_store_card.dart';

class ClubStoreList extends StatelessWidget
{
  const ClubStoreList({super.key,});

  @override
  Widget build(BuildContext context) {
    return CustomListviewBuilder(
      itemBuilder: (_, _) => const ClubStoreCard(), 
      separatorBuilder: (_, _) => Sizes.s29.horizontalSpace, 
      itemCount: 6, scrollDirection: Axis.horizontal,
    );
  }
}