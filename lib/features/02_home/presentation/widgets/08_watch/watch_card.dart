import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_images.dart';

class WatchCard extends StatelessWidget
{
  const WatchCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      alignment: Alignment.center,
      children:
      [
        Image.asset(AppAssets.imgsPNG.player, fit: BoxFit.cover,),
        const PlayImg()
      ],
    );
  }
}


class PlayImg extends StatelessWidget
{
  const PlayImg({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(AppAssets.iconsSvg.playWhite);
  }
}