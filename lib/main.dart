import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    navigatorKey: Get.key,
    initialRoute: '/home',
    getPages: [
      GetPage(
        name: '/home',
        page: () => const Home(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: '/page1',
        page: () => const Page1(),
        binding: Page1Binding(),
      ),
      GetPage(
        name: '/page2',
        page: () => const Page2(),
        binding: Page2Binding(),
      ),
    ],
  ));
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            tileColor: Get.currentRoute == '/home' ? Colors.grey[300] : null,
            onTap: () {
              print(Get.currentRoute);
              Get.back();
              Get.offNamed('/home');
            },
          ),
          ListTile(
            title: const Text('Item 1'),
            tileColor: Get.currentRoute == '/page1' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/page1');
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            tileColor: Get.currentRoute == '/page2' ? Colors.grey[300] : null,
            onTap: () {
              Get.back();
              Get.offNamed('/page2');
            },
          ),
        ],
      ),
    );
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);
  }
}

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("APP DRAWER")),
      body: const Center(
        child: Text('Home'),
      ),
      drawer: const MainDrawer(),
    );
  }
}

class HomeController extends GetxController {
  @override
  void onInit() {
    print('>>> HomeController init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> HomeController ready');
    super.onReady();
  }
}

class Page1Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Page1Controller(), permanent: true);
  }
}

class Page1 extends GetView<Page1Controller> {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      drawer: const MainDrawer(),
      body: Center(
        child: Text(controller.title),
      ),
    );
  }
}

class Page1Controller extends GetxController {
  final title = 'Page 1';

  @override
  void onInit() {
    print('>>> Page1Controller init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> Page1Controller ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>> Page1Controller close');
    super.onClose();
  }
}

class Page2Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Page2Controller(), permanent: true);
  }
}

class Page2 extends GetView<Page2Controller> {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2')),
      drawer: const MainDrawer(),
      body: Center(
        child: Text(controller.title),
      ),
    );
  }
}

class Page2Controller extends GetxController {
  final title = 'Page 2';

  @override
  void onInit() {
    print('>>> Page2Controller init');
    super.onInit();
  }

  @override
  void onReady() {
    print('>>> Page2Controller ready');
    super.onReady();
  }

  @override
  void onClose() {
    print('>>> Page2Controller close');
    super.onClose();
  }
}
