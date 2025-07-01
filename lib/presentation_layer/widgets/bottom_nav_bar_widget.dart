import 'package:nawel/core/util/exports_app.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
    items: List.generate(
      bottomNavItems.length,
      (index) => _buildBottomNavItem(bottomNavItems[index]),
    ),
  );
}

BottomNavigationBarItem _buildBottomNavItem(BottomNavModel model) =>
    BottomNavigationBarItem(
      icon: IconApp(icon: model.icon),
      label: model.label,
    );
