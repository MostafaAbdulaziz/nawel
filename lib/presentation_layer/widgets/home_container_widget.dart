import 'package:nawel/core/util/exports_app.dart';

class HeaderSectionWidget extends StatelessWidget {
  const HeaderSectionWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
    height: 156.h,
    decoration: _createDecor(),
    child: _createContentContainer(context),
  );
}

Widget _createContentContainer(BuildContext context) => Padding(
  padding: EdgeInsets.only(left: 31.w, top: 35.h, right: 31.w),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [_buildFirstSession(context), _buildUserImage()],
  ),
);

Widget _buildFirstSession(BuildContext context) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      ConstantString.deliveringTo,
      style: context.headline1().copyWith(fontSize: 12.sp),
    ),
    SizedBox(height: 4.h),
    Text(
      'Al Satwa, BIA Street',
      style: context.headline1().copyWith(fontSize: 16.sp),
    ),
    SizedBox(height: 7.h),
    Text(
      'Hi hepa!',
      style: context.headline1().copyWith(
        fontSize: 30.sp,
        color: ColorsApp.white,
      ),
    ),
  ],
);

Widget _buildUserImage() => CircleAvatar(
  radius: 30.w,
  backgroundImage: const AssetImage(ImagesPath.imageNawelPath),
);
BoxDecoration _createDecor() => BoxDecoration(
  gradient: linearGradient,
  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
);
