import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/view/home/home_screen.dart';
import 'package:getx_mvvm_architecture/view/login/login_screen.dart';

import '../../view/splash_screen.dart';
import 'routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RoutesName.loginScreen,
          page: () => const LoginScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RoutesName.homeScreen,
          page: () => const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transition: Transition.leftToRight,
        ),
      ];
}
