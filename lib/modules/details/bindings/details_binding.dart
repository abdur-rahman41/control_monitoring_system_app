
import 'package:control_monitoring_system_app/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:control_monitoring_system_app/modules/details/view_model/details_view_model.dart';
import 'package:control_monitoring_system_app/modules/login/view_model/login_view_model.dart';
import 'package:get/get.dart';



class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsViewModel>(() => DetailsViewModel());
  }
}