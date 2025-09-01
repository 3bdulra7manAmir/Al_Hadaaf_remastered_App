// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `خطأ`
  String get error {
    return Intl.message('خطأ', name: 'error', desc: '', args: []);
  }

  /// `ابحث عن لاعب, مدرب, اكاديمية ..`
  String get homeSearchHint {
    return Intl.message(
      'ابحث عن لاعب, مدرب, اكاديمية ..',
      name: 'homeSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `المباراة القادمة`
  String get upComingMatch {
    return Intl.message(
      'المباراة القادمة',
      name: 'upComingMatch',
      desc: '',
      args: [],
    );
  }

  /// `الاكاديميات`
  String get academies {
    return Intl.message('الاكاديميات', name: 'academies', desc: '', args: []);
  }

  /// `عرض الكل`
  String get showAll {
    return Intl.message('عرض الكل', name: 'showAll', desc: '', args: []);
  }

  /// `تسويق مدربين`
  String get coachesMarketing {
    return Intl.message(
      'تسويق مدربين',
      name: 'coachesMarketing',
      desc: '',
      args: [],
    );
  }

  /// `متجر النادى`
  String get clubStore {
    return Intl.message('متجر النادى', name: 'clubStore', desc: '', args: []);
  }

  /// `Watch`
  String get watch {
    return Intl.message('Watch', name: 'watch', desc: '', args: []);
  }

  /// `المنيو`
  String get menu {
    return Intl.message('المنيو', name: 'menu', desc: '', args: []);
  }

  /// `البروفايل`
  String get profile {
    return Intl.message('البروفايل', name: 'profile', desc: '', args: []);
  }

  /// `الخدمات`
  String get services {
    return Intl.message('الخدمات', name: 'services', desc: '', args: []);
  }

  /// `الرئيسيـة`
  String get home {
    return Intl.message('الرئيسيـة', name: 'home', desc: '', args: []);
  }

  /// `مستوى التدريب`
  String get trainingLevel {
    return Intl.message(
      'مستوى التدريب',
      name: 'trainingLevel',
      desc: '',
      args: [],
    );
  }

  /// `جنسية`
  String get nationality {
    return Intl.message('جنسية', name: 'nationality', desc: '', args: []);
  }

  /// `تاريخ الميــــلاد`
  String get birthDate {
    return Intl.message(
      'تاريخ الميــــلاد',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `تسويق لاعبين`
  String get playersMarketing {
    return Intl.message(
      'تسويق لاعبين',
      name: 'playersMarketing',
      desc: '',
      args: [],
    );
  }

  /// `متاجر الاندية`
  String get clubsStores {
    return Intl.message(
      'متاجر الاندية',
      name: 'clubsStores',
      desc: '',
      args: [],
    );
  }

  /// `تسويق مدربين`
  String get coacheMarketing {
    return Intl.message(
      'تسويق مدربين',
      name: 'coacheMarketing',
      desc: '',
      args: [],
    );
  }

  /// `الهداف نيوز`
  String get news {
    return Intl.message('الهداف نيوز', name: 'news', desc: '', args: []);
  }

  /// `التوقعات`
  String get expectations {
    return Intl.message('التوقعات', name: 'expectations', desc: '', args: []);
  }

  /// `المعايشات`
  String get livings {
    return Intl.message('المعايشات', name: 'livings', desc: '', args: []);
  }

  /// `الهداف سبورت`
  String get sport {
    return Intl.message('الهداف سبورت', name: 'sport', desc: '', args: []);
  }

  /// `المزادات`
  String get deals {
    return Intl.message('المزادات', name: 'deals', desc: '', args: []);
  }

  /// `حجز نادى رياضى`
  String get reserveClub {
    return Intl.message(
      'حجز نادى رياضى',
      name: 'reserveClub',
      desc: '',
      args: [],
    );
  }

  /// `المطاعم الصحية`
  String get healthyRestaurants {
    return Intl.message(
      'المطاعم الصحية',
      name: 'healthyRestaurants',
      desc: '',
      args: [],
    );
  }

  /// `اهداف لا تفوتك`
  String get goals {
    return Intl.message('اهداف لا تفوتك', name: 'goals', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
