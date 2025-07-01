import 'package:nawel/core/util/exports_app.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: EdgeInsets.only(right: 18.w, left: 18.w, top: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _buildBody(),
      ),
    ),
  );
}

List<Widget> _buildBody() => [
  const NawelImageApp(),
  createFormFieldSignUp(),
  SizedBox(height: 18.h),
  _buildSignUpButton(),
  SizedBox(height: 13.h),
  buildCreateButton(onTap: () {}),
];

Widget _buildSignUpButton() =>
    ElevatedButtonApp(text: ConstantString.login, onTap: () {});

Widget createFormFieldSignUp() => SizedBox(
  height: 220.h,
  child: ListView.separated(
    separatorBuilder: (context, index) => SizedBox(height: 7.h),
    itemCount: textFormsSignUp.length,
    itemBuilder: (context, index) => _createItem(textFormsSignUp[index]),
  ),
);
Widget _createItem(TextFormModel model) => TextFormFieldApp(
  controller: model.controller,
  hintText: model.hintText,
  textInputType: model.textInputType,
  icon: model.icon,
  isNotVisible: textFormsSignUp.indexOf(model) != 0 ? true : false,
);
