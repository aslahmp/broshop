import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../infrastructure/utils/index.dart';
import '../../controllers/login_controller.dart';

class LoginTile extends GetView<LoginController> {
  const LoginTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          height: 150,
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  controller: controller.emailController,
                  validator: Validators.emailValidator,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration:
                      AppInputDecoration.defalt.copyWith(labelText: 'Email'),
                ),
                TextFormField(
                  controller: controller.passwordController,
                  validator: Validators.passwordValidator,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration:
                      AppInputDecoration.defalt.copyWith(labelText: 'Password'),
                ),
                InkWell(
                  onTap: controller.login,
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.black.withOpacity(.8),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: AppTextStyles.regular
                            .copyWith(color: AppColors.white, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
