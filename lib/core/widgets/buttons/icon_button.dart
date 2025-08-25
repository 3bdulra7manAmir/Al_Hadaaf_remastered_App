import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../../config/theme/font_manager/font_weights.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';

class CustomIconButton extends StatelessWidget
{
  const CustomIconButton({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.backgroundColor,
    required this.onPressed,
    required this.text,
    this.textStyle,
    required this.icon,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final void Function() onPressed;
  final String text;
  final TextStyle? textStyle;
  final Widget? icon;



  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 52.h,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(padding),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: borderRadius ?? AppRadiuses.circular.card, // Button Border Raduis HERE
            side: BorderSide(width: borderWidth ?? (Sizes.s1).w, color: borderColor ?? AppColors.color.kTransparent)
            ),),
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor ?? AppColors.color.kWhite001,), // Button Background Color HERE
        ),
        onPressed: onPressed,
        label: Text(text, style: textStyle ?? AppStyles.bold( // Button Text HERE and Text Style
          fontColor: AppColors.color.kBlack001, 
          fontWeight: AppFontWeights.semiBoldWeight),
        ),  
        icon: icon,
      ),
    );
  }
}
