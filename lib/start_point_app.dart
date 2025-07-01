import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawel/core/util/colors.dart';
import 'package:nawel/presentation_layer/screens/sign_up_screen.dart';

class StartPointApp extends StatelessWidget {
  const StartPointApp({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder:
        (context, child) => MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: ColorsApp.screenColor),
          debugShowCheckedModeBanner: false,
          home: SignUpScreen(),
        ),
  );
}
