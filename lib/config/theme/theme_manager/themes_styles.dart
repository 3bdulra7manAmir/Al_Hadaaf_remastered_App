import 'package:flutter/material.dart';
import '../../../core/constants/app_borders.dart';
import '../color_manager/colors.dart';

//------------------------------------------------//
//                 Light THEME                    //
//------------------------------------------------//
abstract class LightThemeStyles
{
  LightThemeStyles._();

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppRadiuses.circular.card, // Button Border Radius HERE
          side: BorderSide(color: AppColors.color.kTransparent,),), // Button Side Color HERE
      ),
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kGreen001), // Buton BackGround Text Here...
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
    ),
  );

  static InputDecorationTheme get inputBorder => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.color.kBlack001, // Text Input Fill Color HERE
    border: borderLightStyle(),
    enabledBorder: borderLightStyle(),
    disabledBorder: borderLightStyle(),
    errorBorder: borderLightStyle(),
    focusedBorder: borderLightStyle(),
    focusedErrorBorder: borderLightStyle(),
  );

  static OutlineInputBorder borderLightStyle()
  {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.color.kBlack001),  // Text Input Border Color HERE
      borderRadius: AppRadiuses.circular.card, // Text Input Raduis Color HERE
    );
  }

  static CardThemeData get cardTheme => const CardThemeData();
  static AppBarTheme get appBarTheme => const AppBarTheme();
  static DialogThemeData get dialogTheme => const DialogThemeData();
  static BottomSheetThemeData get bottomSheetTheme => const BottomSheetThemeData();
}

//------------------------------------------------//
//                  DARK THEME                    //
//------------------------------------------------//
abstract class DarkThemeStyles
{
  DarkThemeStyles._();

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppRadiuses.circular.card, // Button Border Radius HERE
          side: BorderSide(color: AppColors.color.kTransparent,),), // Button Side Color HERE
      ),
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kGreen001), // Buton BackGround Text Here...
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
    ),
  );

  static InputDecorationTheme get inputBorder => const InputDecorationTheme(border: OutlineInputBorder(),);
  static CardThemeData get cardTheme => const CardThemeData();
  static AppBarTheme get appBarTheme => const AppBarTheme();
  static DialogThemeData get dialogTheme => const DialogThemeData();
  static BottomSheetThemeData get bottomSheetTheme => const BottomSheetThemeData();
}