import 'package:broshop_app/app/controllers/user_controller.dart';
import 'package:broshop_app/infrastructure/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends GetView<UserController> {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: const BoxDecoration(color: AppColors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage(controller.userModel?.imageUrl ?? ''),
                  radius: 40,
                )),
            Text(controller.userModel?.name ?? '',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: AppColors.white)),
            Text(
              controller.userModel?.email ?? '',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              width: 200,
            )
          ],
        ));
  }
}
