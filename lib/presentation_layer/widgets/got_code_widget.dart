import 'package:nawel/core/util/exports_app.dart';

class GotCodeWidget extends StatelessWidget {
  const GotCodeWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(16.w),
    decoration: _buildDecor(),
    margin: EdgeInsets.all(16.w),
    child: _buildContent(context),
  );
}

Widget _buildContent(BuildContext context) => Row(
  children: [
    const ItemImage(imagePath: ImagesPath.codePath),
    SizedBox(width: 10.w),
    _buildGotCodeTexts(context),
  ],
);

Widget _buildGotCodeTexts(BuildContext context) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      ConstantString.gotACode,
      style: context.headline1().copyWith(fontSize: 16.sp),
    ),
    Text(ConstantString.explainGotACode, style: context.headline2()),
  ],
);
BoxDecoration _buildDecor() => BoxDecoration(
  borderRadius: BorderRadius.circular(10.r),
  border: Border.all(
    color: ColorsApp.hintColor, // Border color
    width: 2.0, // Border width
  ),
);
