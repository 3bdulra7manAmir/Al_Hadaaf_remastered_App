
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/i18n/generated/l10n.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/extensions/margin.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/widgets/column.dart';
import '../../../../core/widgets/slider/slider_menu.dart';
import '../widgets/01_home_appbar/background.dart';
import '../widgets/02_search_field/search_field.dart';
import '../widgets/03_sports/sports_list.dart';
import '../widgets/04_upcoming_match/upcoming_match_text.dart';
import '../widgets/05_academies/academies_cards_list.dart';
import '../widgets/06_coache_marketing/coaches_card.dart';
import '../widgets/07_club_store/club_store_list.dart';
import '../widgets/08_watch/watch_card_list.dart';
import '../widgets/show_all.dart';


class Home extends StatelessWidget
{
  Home({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return BackgroundColor(
      child: CustomSingleChild(
        children:
        [
          Sizes.s10.verticalSpace,
          CustomColumn(
            children:
            [
              CustomSearchField(searchController: searchController),
              Sizes.s26.verticalSpace,
              SizedBox(height: 38.h, child: const SportsList()),
            ],
          ),
          //Sizes.s26.verticalSpacer,
          PlayerScrollMenu(
            imgs: [AppAssets.imgsSvg.introCard, AppAssets.imgsSvg.introCard,], 
            height: 171.h,
          ),
          Sizes.s23.verticalSpace,
          const UpComingMatchText(),
          Sizes.s10.verticalSpace,
          PlayerScrollMenu(
            imgs: [AppAssets.imgsSvg.upComingMatchCard, AppAssets.imgsSvg.upComingMatchCard,], 
            height: 185.h,
          ),
          Sizes.s17.verticalSpace,
          CustomColumn(
            children:
            [
              TitleAndShowAllText(title: S.current.academies, onTap: () => AppLogger.info('ShowAll...'),),
              Sizes.s18.verticalSpace,
              SizedBox(height: 188.h, child: const AcademiesCardsList()),
              Sizes.s21.verticalSpace,
              TitleAndShowAllText(title: S.current.coachesMarketing, onTap: () => AppLogger.info('ShowAll...'),),
              Sizes.s24.verticalSpace,
              //Ahmed Sayed
              PlayerScrollMenu(
                widgets: const [CoachesCard(), CoachesCard()], 
                height: 210.h,
              ),
              //
              Sizes.s41.verticalSpace,
              TitleAndShowAllText(title: S.current.clubStore, onTap: () => AppLogger.info('ShowAll...'),),
              Sizes.s20.verticalSpace,
              SizedBox(height: 107.h, child: const ClubStoreList()),
              //Sizes.s23.verticalSpacer,
              SvgPicture.asset(AppAssets.imgsSvg.introCard).marginDirectional(end: 27.w)
            ]
          ),
          Sizes.s28.verticalSpace,
          TitleAndShowAllText(
            isBackMargin: true,
            title: S.current.watch, 
            onTap: () => AppLogger.info('ShowAll...'),
          ),
          Sizes.s8.verticalSpace,
          SizedBox(height: 163.h, child: const WatchCardList()),

          Sizes.s24.verticalSpace,
        ],
      ),
    );
  }
}




