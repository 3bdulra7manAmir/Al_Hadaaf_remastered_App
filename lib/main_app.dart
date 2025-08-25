import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/i18n/generated/l10n.dart';
import '../config/router/app_router.dart';
import '../config/theme/theme_manager/themes.dart';

class AlHadaaf extends StatelessWidget
{
  const AlHadaaf({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MultiBlocProvider(
          providers: const [],
          child: const AlHadaafMaterial(),
        ),
      ),
    );
  }
}

class AlHadaafMaterial extends StatelessWidget
{
  const AlHadaafMaterial({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
      // Routing
      routerConfig: AppRouter.router,
      
      // Localization
      localizationsDelegates:
      const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      //locale: localProvider,

      //Theming
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      //themeMode: themeProvider,
      
      //ETC...
      debugShowCheckedModeBanner: false,
    );
  }
}