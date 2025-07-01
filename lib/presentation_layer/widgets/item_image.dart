import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemImage extends StatelessWidget {
  final String imagePath;
  final BoxFit boxFit;
  const ItemImage({
    super.key,
    required this.imagePath,
    this.boxFit = BoxFit.none,
  });

  @override
  Widget build(BuildContext context) =>
      Image.asset(imagePath, width: 57.w, height: 50.h, fit: boxFit);
}
