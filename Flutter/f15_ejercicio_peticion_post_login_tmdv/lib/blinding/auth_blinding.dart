import 'package:f15_ejercicio_peticion_post_login_tmdv/utils/api_client.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppChopperClient());
  }
}
