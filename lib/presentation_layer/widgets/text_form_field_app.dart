import 'package:nawel/core/util/exports_app.dart';

class TextFormFieldApp extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool isNotVisible;
  final IconData icon;
  const TextFormFieldApp({
    super.key,
    required this.hintText,
    required this.textInputType,
    required this.controller,
    this.isNotVisible = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _buildDecorate(context),
      keyboardType: textInputType,
      style: _buildTextStyle(),
      controller: controller,
      obscureText: isNotVisible,
    );
  }

  TextStyle _buildTextStyle() =>
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  InputDecoration _buildDecorate(BuildContext context) => InputDecoration(
    constraints: BoxConstraints(maxHeight: 50.h),
    hintText: hintText,
    hintStyle: context.headline2(),
    enabledBorder: _createBorder(),
    focusedBorder: _createBorder(),
    prefixIcon: IconApp(icon: icon),
    filled: true,
    fillColor: ColorsApp.lightColor,
  );

  OutlineInputBorder _createBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: const BorderSide(style: BorderStyle.none, width: 0),
  );
}
