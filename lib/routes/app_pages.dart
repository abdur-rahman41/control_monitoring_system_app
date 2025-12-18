
import 'package:control_monitoring_system_app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:control_monitoring_system_app/modules/dashboard/view/dashboard_view.dart';
import 'package:control_monitoring_system_app/modules/details/bindings/details_binding.dart';
import 'package:control_monitoring_system_app/modules/details/view/details_view.dart';
import 'package:control_monitoring_system_app/modules/information/bindings/information_bindings.dart';
import 'package:control_monitoring_system_app/modules/information/view/information_view.dart';
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
     GetPage(
      name: AppRoutes.DASHBOARD,
      page: () =>  DashboardView(),
      binding: DashboardBinding(),
    ),
     GetPage(
      name: AppRoutes.DETAILS,
      page: () =>  DetailsView(),
      binding: DetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.INFORMATION,
      page: () =>  InformationView(),
      binding: InformationBinding(),
    ),


  ];
}