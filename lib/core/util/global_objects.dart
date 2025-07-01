import 'exports_app.dart';

TextEditingController mailLoginController = TextEditingController();
TextEditingController passwordLoginController = TextEditingController();
TextEditingController mailSignUpController = TextEditingController();
TextEditingController passwordSignUpController = TextEditingController();
TextEditingController confirmSignUpController = TextEditingController();
PageController pageController = PageController();
List<PageViewModel> pageViewGroup = [
  const PageViewModel(
    head: ConstantString.allInOneDelivery,
    explain: ConstantString.explainAllInOneDelivery,
  ),
  const PageViewModel(
    head: ConstantString.userToUserDelivery,
    explain: ConstantString.explainUserToUserDelivery,
  ),
  const PageViewModel(
    head: ConstantString.salesAndDiscounts,
    explain: ConstantString.explainSalesAndDiscounts,
  ),
];
List<TextFormModel> textFormsLogin = [
  TextFormModel(
    hintText: ConstantString.mail,
    textInputType: TextInputType.emailAddress,
    controller: mailLoginController,
    icon: IconsApp.emailIcon,
  ),
  TextFormModel(
    hintText: ConstantString.password,
    textInputType: TextInputType.visiblePassword,
    controller: passwordLoginController,
    icon: IconsApp.passwordIcon,
  ),
];

List<TextFormModel> textFormsSignUp = [
  TextFormModel(
    hintText: ConstantString.mail,
    textInputType: TextInputType.emailAddress,
    controller: mailSignUpController,
    icon: IconsApp.emailIcon,
  ),
  TextFormModel(
    hintText: ConstantString.password,
    textInputType: TextInputType.visiblePassword,
    controller: passwordSignUpController,
    icon: IconsApp.passwordIcon,
  ),
  TextFormModel(
    hintText: ConstantString.password,
    textInputType: TextInputType.visiblePassword,
    controller: confirmSignUpController,
    icon: IconsApp.passwordIcon,
  ),
];

LinearGradient linearGradient = const LinearGradient(
  colors: [ColorsApp.purpleColor, ColorsApp.yellowColor],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

List<ShortcutModel> shortcuts = const [
  ShortcutModel(
    imagePath: ImagesPath.pastOrderPath,
    name: ConstantString.pastOrders,
  ),
  ShortcutModel(
    imagePath: ImagesPath.codePath,
    name: ConstantString.superServer,
  ),
  ShortcutModel(
    imagePath: ImagesPath.mustTriesPath,
    name: ConstantString.mustTries,
  ),
  ShortcutModel(
    imagePath: ImagesPath.giveBackPath,
    name: ConstantString.giveBack,
  ),
  ShortcutModel(
    imagePath: ImagesPath.sellersPath,
    name: ConstantString.bestSellers,
  ),
];

List<String> imagesPath = [
  ImagesPath.foodOnePath,
  ImagesPath.foodTwoPath,
  ImagesPath.foodThreePath,
  ImagesPath.foodFourPath,
  ImagesPath.foodFivePath,
];

List<RestaurantNearByModel> restaurantsNearBy = [
  const RestaurantNearByModel(
    image: ImagesPath.nearByOnePath,
    name: ConstantString.alloBeirut,
    time: '32 mins',
  ),
  const RestaurantNearByModel(
    image: ImagesPath.nearByTwoPath,
    name: ConstantString.laffah,
    time: '32 mins',
  ),
  const RestaurantNearByModel(
    image: ImagesPath.nearByThreePath,
    name: ConstantString.falafil,
    time: '32 mins',
  ),
  const RestaurantNearByModel(
    image: ImagesPath.nearByFourPath,
    name: ConstantString.barbar,
    time: '32 mins',
  ),
];

List<BottomNavModel> bottomNavItems = [
  const BottomNavModel(label: ConstantString.home, icon: IconsApp.home),
  const BottomNavModel(
    label: ConstantString.categories,
    icon: IconsApp.categories,
  ),
  const BottomNavModel(label: ConstantString.deliver, icon: IconsApp.delivery),
  const BottomNavModel(label: ConstantString.cart, icon: IconsApp.cart),
  const BottomNavModel(label: ConstantString.profile, icon: IconsApp.profile),
];
