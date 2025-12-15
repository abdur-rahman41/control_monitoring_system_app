
import 'package:control_monitoring_system_app/modules/login/view_model/login_view_model.dart';
import 'package:get/get.dart';



class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
  }
}