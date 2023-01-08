import 'package:broshop_app/infrastructure/index.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/managers/index.dart';
import '../../../data/repository/authentication/authentication_repository.dart';
import '../../../data/repository/authentication/i_authentication_repository.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final IAuthenticationRepository _authenticationRepository =
      AuthenticationRepository();
  void signInWithGoogle() async {
    var result = await _authenticationRepository.signInWithGoogle();
    if (result.isSuccess) {
      UserManager.intUser();
      goToHome();
    } else {
      AppSnackBar.showSnackBar('Invalid credentials');
    }
  }

  void goToHome() {
    Get.offNamed(Routes.HOME);
  }
}
