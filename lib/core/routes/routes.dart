import 'package:flowdr_mobile_app/core/navigation/bindings/navigation_binding.dart';
import 'package:flowdr_mobile_app/core/navigation/main_navigation.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/bindings/auth_binding.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/pages/signin_screen.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/pages/signup_screen.dart';
import 'package:flowdr_mobile_app/features/inventory/presentation/pages/inventory_screen.dart';
import 'package:flowdr_mobile_app/features/settings/presentation/pages/settings_screen.dart';
import 'package:flowdr_mobile_app/features/users/presentation/pages/users_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final route = [
    // Auth routes
    GetPage(name: "/login", page: () => SigninScreen(), binding: AuthBinding()),
    GetPage(
      name: "/register",
      page: () => SignupScreen(),
      binding: AuthBinding(),
    ),

    // Main navigation (protected routes)
    GetPage(
      name: "/home",
      page: () => const MainNavigation(),
      binding: NavigationBinding(),
    ),

    // Drawer routes (full screen)
    GetPage(name: "/users", page: () => const UsersScreen()),
    GetPage(name: "/inventory", page: () => const InventoryScreen()),
    GetPage(name: "/settings", page: () => const SettingsScreen()),
  ];
}
