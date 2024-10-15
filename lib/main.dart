import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/configs/pages.dart';
import 'app/configs/routes.dart';
import 'app/ui/themes/default.dart';

void main() => runApp(GetMaterialApp(
      theme: defaultTheme,
      title: 'App Nav Drawer',
      getPages: Pages.routes,
      initialRoute: Routes.home,
      navigatorKey: Get.key,
    ));
