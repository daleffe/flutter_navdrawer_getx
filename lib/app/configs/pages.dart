import 'package:get/get.dart';

import '../ui/pages/home/binding.dart';
import '../ui/pages/home/view.dart';
import '../ui/pages/settings/binding.dart';
import '../ui/pages/settings/view.dart';

import 'routes.dart';

class Pages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    )
  ];
}
