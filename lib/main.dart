import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/bloc_observer.dart';
import 'core/services/database/shared_preferences/shared_pref_initialization.dart';
import 'main_app.dart';

  void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  /// [Shared_Pref]
  await SharedPrefInit.init();
  /// [Bloc Observer]
  Bloc.observer = const SimpleBlocObserver();
  
  //App Run
  runApp(const AlHadaaf(),);
}