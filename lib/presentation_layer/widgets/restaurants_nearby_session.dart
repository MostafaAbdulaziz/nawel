import 'package:nawel/core/util/exports_app.dart';

class RestaurantsNearbySession extends StatelessWidget {
  const RestaurantsNearbySession({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.all(6.w),
    child: Row(
      children: List.generate(
        restaurantsNearBy.length,
        (index) => _buildItem(context, restaurantsNearBy[index]),
      ),
    ),
  );
}

Widget _buildItem(
  BuildContext context,
  RestaurantNearByModel shortcut,
) => Expanded(
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          //color: ColorsApp.brownColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: ColorsApp.hintColor),
        ),
        child: ItemImage(imagePath: shortcut.image),
      ),
      Text(shortcut.name, style: context.headline1().copyWith(fontSize: 12.sp)),
      Text(shortcut.time, style: context.headline2().copyWith(fontSize: 10.sp)),
    ],
  ),
);
