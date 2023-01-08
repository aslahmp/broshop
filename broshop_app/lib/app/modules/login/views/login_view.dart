import 'package:broshop_app/app/modules/login/views/local.widget/login_tile.dart';
import 'package:broshop_app/infrastructure/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LoginTile(),
            verticalSpace(20),
            const Text('Or'),
            verticalSpace(15),
            SignInButton(
              Buttons.Google,
              onPressed: controller.signInWithGoogle,
            ),
          ],
        ),
      ),
    );
  }
}
