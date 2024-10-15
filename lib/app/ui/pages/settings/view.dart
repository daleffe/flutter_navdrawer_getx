import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';
import '../../../shared/widgets/nav_menu.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: const Center(
        child: Text('Settings'),
      ),
      drawer: const NavMenu(),
    );
  }
}
