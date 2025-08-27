import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../../../../core/widgets/builders/listview_builder.dart';
import 'watch_card.dart';

class WatchCardList extends StatelessWidget
{
  const WatchCardList({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (_, _) => 
      GestureDetector(
        onTap: () => AppLogger.info('Play Pressed...'),
        child: const WatchCard()
      ), 
      separatorBuilder: (_, _) => Sizes.s12.horizontalSpace, 
      itemCount: 6, scrollDirection: Axis.horizontal,
    );
  }
}