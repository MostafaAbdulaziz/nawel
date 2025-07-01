import 'package:nawel/core/util/exports_app.dart';

class IconApp extends StatelessWidget {
  final IconData icon;
  const IconApp({super.key, required this.icon});

  @override
  Widget build(BuildContext context) =>
      Icon(icon, color: ColorsApp.hintColor, size: 24.w);
}
