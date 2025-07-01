import 'package:nawel/core/util/exports_app.dart';

class TextButtonApp extends StatelessWidget {
  final Function() onTap;
  final String label;
  final Color color;
  const TextButtonApp({
    super.key,
    required this.onTap,
    required this.label,
    this.color = ColorsApp.hintColor,
  });

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: onTap,
    child: Text(label, style: context.headline2().copyWith(color: color)),
  );
}

Widget buildCreateButton({required VoidCallback onTap}) => TextButtonApp(
  onTap: onTap,
  label: ConstantString.createAnAccount,
  color: Colors.blue,
);
