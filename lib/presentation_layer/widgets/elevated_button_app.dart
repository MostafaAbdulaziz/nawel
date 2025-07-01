import 'package:nawel/core/util/exports_app.dart';

class ElevatedButtonApp extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ElevatedButtonApp({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) => ElevatedButton(
    onPressed: onTap,
    style: _buildStyle(),
    child: _createTextButton(context),
  );
  Widget _createTextButton(BuildContext context) => Text(
    text,
    style: context.headline1().copyWith(fontSize: 20, color: ColorsApp.white),
  );
}

ButtonStyle _buildStyle() => ElevatedButton.styleFrom(
  minimumSize: Size(295.w, 54.h),
  backgroundColor: ColorsApp.purpleColor,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
);
