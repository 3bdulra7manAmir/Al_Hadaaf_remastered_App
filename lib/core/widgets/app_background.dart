import 'package:flutter/material.dart';

import '../../config/theme/color_manager/colors.dart';

class BackgroundColor extends StatelessWidget
{
  const BackgroundColor({
    super.key, 
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(gradient: AppColors.gradient.kBackgroundLinear),
      child: child
    );
  }
}

