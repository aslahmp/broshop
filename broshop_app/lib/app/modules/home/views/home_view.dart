import 'package:broshop_app/app/modules/Drawer/views/drawer_view.dart';
import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      drawer: const DrawerView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.onFloatingActionTap();
        },
        child: Icon(UserManager.isAdmin ? Icons.add : Icons.shopping_cart),
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
