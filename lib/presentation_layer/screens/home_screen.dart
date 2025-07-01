import 'package:nawel/core/util/exports_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    bottomNavigationBar: const BottomNavBarWidget(),
    body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: _buildBodyContent(context),
    ),
  );
}

Widget _buildBodyContent(BuildContext context) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const HeaderSectionWidget(),
    _createHeadText(context, ConstantString.services),
    const ServicesSession(),
    const GotCodeWidget(),
    _createHeadText(context, ConstantString.shortcuts),
    const ShortcutsSession(),
    const BannerSession(),
    _createHeadText(context, ConstantString.popularRestaurants, fontSize: 16),
    const RestaurantsNearbySession(),
  ],
);

Widget _createHeadText(
  BuildContext context,
  String text, {
  double fontSize = 20,
}) => Padding(
  padding: EdgeInsets.all(16.w),
  child: Text(text, style: context.headline1().copyWith(fontSize: fontSize.sp)),
);
