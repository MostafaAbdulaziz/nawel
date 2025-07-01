import 'package:nawel/core/util/exports_app.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildBody(context),
    ),
  );
}

List<Widget> _buildBody(BuildContext context) => [
  Stack(
    alignment: Alignment(0.1.w, 0.5.h),
    children: const [CircleColorApp(), NawelImageApp()],
  ),
  SizedBox(height: 85.h),
  const PageViewApp(),
  SizedBox(height: 52.h),
  ElevatedButtonApp(
    text: ConstantString.getStarted,
    onTap: () => _gotoLogin(context),
  ),
  SizedBox(height: 14.h),
  TextButtonApp(onTap: () => _makeScroll(context), label: ConstantString.next),
];

void _makeScroll(BuildContext context) {
  if (pageController.page == 2) {
    context.pushReplacement(const HomeScreen());
  }
  pageController.nextPage(
    duration: const Duration(seconds: 1),
    curve: Curves.ease,
  );
}

void _gotoLogin(BuildContext context) =>
    context.pushReplacement(const HomeScreen());
