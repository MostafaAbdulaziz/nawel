import 'package:nawel/core/util/exports_app.dart';

class NawelImageApp extends StatelessWidget {
  const NawelImageApp({super.key});

  @override
  Widget build(BuildContext context) => Image.asset(
    ImagesPath.imageNawelPath,
    width: 336.w,
    height: 336.w,
    fit: BoxFit.cover,
  );
}
