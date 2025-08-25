import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppPadding
{
  AppPadding._();
  static final all = All._();
  static final symmetric = Symmetric._();
  static final directional = Directional._();
  static final single = Single._();
  static final special = Special._();
}


class All
{
  All._();

  ///[all: 17px]
  final EdgeInsets trackClosedOrder = const EdgeInsets.all(17);
}


class Symmetric
{
  Symmetric._();

  ///[horizontal: 5px]
  EdgeInsets get card => EdgeInsets.symmetric(horizontal: 5.w);

}


class Directional
{
  Directional._();

  ///[25px] start
  EdgeInsetsDirectional get card => EdgeInsetsDirectional.only(start: 25.w,);

}


class Single
{
  Single._();

  ///[30px] left
  EdgeInsets get largeLeft => EdgeInsets.only(left: 30.0.w);
}


class Special
{
  Special._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
