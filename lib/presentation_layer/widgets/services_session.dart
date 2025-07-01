import 'package:nawel/core/util/exports_app.dart';

class ServicesSession extends StatelessWidget {
  const ServicesSession({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(top: 19.h),
    child: SizedBox(
      height: 125.h,
      child: Row(
        children: [
          _createServiceItem(
            context: context,
            image: ImagesPath.foodPath,
            offer: '20mins',
            serviceName: ConstantString.food,
          ),
          _createServiceItem(
            context: context,
            image: ImagesPath.healthPath,
            offer: '20mins',
            serviceName: ConstantString.healthAndWellness,
          ),
          _createServiceItem(
            context: context,
            image: ImagesPath.groceriesPath,
            offer: '20mins',
            serviceName: ConstantString.groceries,
          ),
        ],
      ),
    ),
  );
}

Widget _createServiceItem({
  required BuildContext context,
  required String image,
  required String offer,
  required String serviceName,
}) => Expanded(
  flex: 1,
  child: Column(
    children: [
      _buildServiceImage(image),
      _createDisCount(context, offer),
      _createServiceName(context, serviceName),
    ],
  ),
);

Widget _buildServiceImage(String image) => Container(
  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.r),
    color: ColorsApp.lightColor,
  ),
  child: Image.asset(image, width: 57.w, height: 50.h, fit: BoxFit.cover),
);
Widget _createDisCount(BuildContext context, String offer) => Container(
  decoration: BoxDecoration(
    color: ColorsApp.purpleColor,
    borderRadius: BorderRadius.circular(10.r),
  ),
  child: Text(
    offer,
    style: context.headline2().copyWith(
      color: ColorsApp.white,
      fontSize: 12.sp,
    ),
  ),
);

Widget _createServiceName(BuildContext context, String name) => SizedBox(
  width: 63.w,
  child: Text(
    textAlign: TextAlign.center,
    name,
    style: context.headline1().copyWith(
      color: ColorsApp.blackColor,
      fontSize: 14.sp,
    ),
  ),
);
