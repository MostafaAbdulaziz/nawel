import 'package:nawel/core/util/exports_app.dart';

class PageViewApp extends StatelessWidget {
  const PageViewApp({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 289.w,
    height: 114.h,
    child: PageView.builder(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder:
          (context, index) => _buildItem(context, pageViewGroup[index]),
      itemCount: 3,
    ),
  );
}

Widget _buildItem(BuildContext context, PageViewModel model) => Column(
  children: [
    Text(model.head, style: context.headline1()),
    SizedBox(height: 11.h),
    _createExplainText(context, model.explain),
  ],
);

Widget _createExplainText(BuildContext context, String text) => SizedBox(
  width: 289.w,
  child: Text(text, style: context.headline2(), textAlign: TextAlign.center),
);
