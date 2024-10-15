import 'package:get/get.dart';

import 'controller.dart';

class SettingsBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    Get.put(SettingsController(), permanent: true);
  }
}
