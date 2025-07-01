import 'package:nawel/core/util/exports_app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 192.h),
      child: const NawelImageApp(),
    ),
  );
}
