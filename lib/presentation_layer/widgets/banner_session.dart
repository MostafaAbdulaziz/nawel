import 'package:nawel/core/util/exports_app.dart';

class BannerSession extends StatelessWidget {
  const BannerSession({super.key});

  @override
  Widget build(BuildContext context) => CarouselSlider(
    options: _createOptions(),
    items: List.generate(
      5,
      (index) => _buildBannerItem(context, imagesPath[index]),
    ),
  );
}

Widget _buildBannerItem(BuildContext context, String imagePath) => Container(
  margin: EdgeInsets.all(14.w),
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
  width: double.infinity,
  clipBehavior: Clip.antiAlias,
  child: ItemImage(imagePath: imagePath, boxFit: BoxFit.fitWidth),
);

CarouselOptions _createOptions() => CarouselOptions(
  initialPage: 0,
  aspectRatio: 5 / 2,
  enableInfiniteScroll: true,
  autoPlay: true,
  autoPlayInterval: const Duration(seconds: 4),
  autoPlayAnimationDuration: const Duration(milliseconds: 800),
  autoPlayCurve: Curves.fastOutSlowIn,
  scrollDirection: Axis.horizontal,
  viewportFraction: 1,
);
