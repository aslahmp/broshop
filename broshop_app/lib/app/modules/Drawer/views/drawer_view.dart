import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:broshop_app/app/modules/Drawer/views/local.widgets/drawer_tile.dart';
import 'package:broshop_app/infrastructure/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'local.widgets/profile.dart';

class DrawerView extends GetView<UserController> {
  const DrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Profile(),
              DrawerTile(
                  text: 'Log Out',
                  icon: Icons.logout,
                  onTap: () {
                    controller.logOut();
                  }),
              verticalSpace(350),
            ],
          ),
        ),
      ),
    );
  }
}
