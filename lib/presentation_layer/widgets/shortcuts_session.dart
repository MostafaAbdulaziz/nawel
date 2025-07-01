import 'package:nawel/core/util/exports_app.dart';

class ShortcutsSession extends StatelessWidget {
  const ShortcutsSession({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.all(6.w),
    child: Row(
      children: List.generate(
        shortcuts.length,
        (index) => _buildItem(context, shortcuts[index]),
      ),
    ),
  );
}

Widget _buildItem(BuildContext context, ShortcutModel shortcut) => Expanded(
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: ColorsApp.brownColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ItemImage(imagePath: shortcut.imagePath),
      ),
      Text(shortcut.name, style: context.headline1().copyWith(fontSize: 12.sp)),
    ],
  ),
);
