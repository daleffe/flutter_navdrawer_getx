import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';
import '../../../shared/widgets/nav_menu.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: const Center(
        child: Text('Home'),
      ),
      drawer: const NavMenu(),
    );
  }
}
