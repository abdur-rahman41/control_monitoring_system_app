
import 'package:control_monitoring_system_app/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:control_monitoring_system_app/modules/information/view_model/information_view_model.dart';
import 'package:control_monitoring_system_app/modules/login/view_model/login_view_model.dart';
import 'package:get/get.dart';



class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformationViewModel>(() => InformationViewModel());
  }
}