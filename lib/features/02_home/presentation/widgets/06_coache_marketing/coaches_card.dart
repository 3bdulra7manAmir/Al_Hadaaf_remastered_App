import 'package:flutter/material.dart';

import 'coache_img.dart';
import 'coache_info.dart';
import 'coache_name.dart';


class CoachesCard extends StatelessWidget
{
  const CoachesCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Coache Image
          CoacheImg(),
          // info card
          CoacheInfoCard(),
          // Black Box Coache Name
          CoacheName(),
        ],
      ),
    );
  }
}


