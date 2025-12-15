
import 'package:control_monitoring_system_app/modules/login/bindings/login_binding.dart';
import 'package:control_monitoring_system_app/modules/login/view/login_view.dart';
import 'package:control_monitoring_system_app/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [

    GetPage(
      name: AppRoutes.LOGIN,
      page: () =>  LoginView(),
      binding: LoginBinding(),
    ),

  ];
}