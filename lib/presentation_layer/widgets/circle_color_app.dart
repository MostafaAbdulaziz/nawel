import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleColorApp extends StatelessWidget {
  const CircleColorApp({super.key});

  @override
  Widget build(BuildContext context) => Align(
    alignment: Alignment.topCenter,

    child: Transform.translate(
      offset: Offset(-104.w, -100.h),
      child: Container(
        width: 342.w,
        height: 342.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xff8900FE), Color(0xffFFDE59)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    ),
  );
}
