import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget 
{
  const CustomAppBar({
    super.key,
    this.backgroundColor,
    required this.barTitle,
    this.leadingWidth,
    this.leading,
    this.actions,
    this.actionsPadding,
    this.toolbarHeight,
  });

  final Color? backgroundColor;
  final String barTitle;
  final double? leadingWidth;
  final Widget? leading;
  final List<Widget>? actions;
  final EdgeInsetsGeometry? actionsPadding;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(barTitle, style: AppStyles.black()), //Define Style HERE
      automaticallyImplyLeading: false,
      leadingWidth: leadingWidth ?? 44.w, //Define Width HERE
      leading: leading,
      actions: actions,
      actionsPadding: actionsPadding,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));
}