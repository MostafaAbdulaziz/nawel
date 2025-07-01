import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/colors.dart';

extension AppTextStyles on BuildContext {
  TextStyle headline1() => Theme.of(this).textTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 28.sp,
  );

  TextStyle headline2() => Theme.of(this).textTheme.headlineMedium!.copyWith(
    fontSize: 14.sp,
    color: ColorsApp.hintColor,
  );

  TextStyle bodyText() =>
      Theme.of(this).textTheme.bodyMedium!.copyWith(fontSize: 16);

  TextStyle caption() =>
      Theme.of(this).textTheme.labelSmall!.copyWith(fontSize: 12);

  TextStyle linkText() => Theme.of(this).textTheme.bodySmall!.copyWith(
    fontSize: 14,
    color: Theme.of(this).colorScheme.secondary,
    decoration: TextDecoration.underline,
  );
}
