import 'package:flowdr_mobile_app/features/auth/presentation/pages/signin_screen.dart';
import 'package:flowdr_mobile_app/features/auth/presentation/pages/signup_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final route = [
    GetPage(name: "/login", page: () => SigninScreen()),
    GetPage(name: "/register", page: () => SignupScreen()),
  ];
}
