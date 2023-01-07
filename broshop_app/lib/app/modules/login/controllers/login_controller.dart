import 'package:get/get.dart';

import '../../../data/repository/authentication/authentication_repository.dart';
import '../../../data/repository/authentication/i_authentication_repository.dart';

class LoginController extends GetxController {
  final IAuthenticationRepository _authenticationRepository =
      AuthenticationRepository();
  void signInWithGoogle() {
    _authenticationRepository.signInWithGoogle();
  }
}
