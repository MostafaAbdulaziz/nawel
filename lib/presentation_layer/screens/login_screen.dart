import 'package:nawel/core/util/exports_app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: EdgeInsets.only(
        right: 16.w,
        left: 16.w,
        top: 59.h,
        bottom: 100.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildBody(),
      ),
    ),
  );
}

List<Widget> _buildBody() => [
  const NawelImageApp(),
  createFormFieldLogin(),
  SizedBox(height: 10.h),
  _buildLoginButton(),
  SizedBox(height: 10.h),
  buildCreateButton(onTap: () {}),
];

Widget _buildLoginButton() =>
    ElevatedButtonApp(text: ConstantString.login, onTap: () {});

Widget createFormFieldLogin() => SizedBox(
  height: 180.h,
  child: ListView.separated(
    separatorBuilder: (context, index) => SizedBox(height: 18.h),
    itemCount: textFormsLogin.length,
    itemBuilder: (context, index) => _createItem(textFormsLogin[index]),
  ),
);
Widget _createItem(TextFormModel model) => TextFormFieldApp(
  controller: model.controller,
  hintText: model.hintText,
  textInputType: model.textInputType,
  icon: model.icon,
  isNotVisible: textFormsLogin.indexOf(model) == 1 ? true : false,
);
