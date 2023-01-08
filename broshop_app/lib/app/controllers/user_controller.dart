import 'package:broshop_app/app/data/model/user_model.dart';
import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:get/get.dart';

import '../../infrastructure/index.dart';
import '../data/repository/user/i_user_repository.dart';
import '../data/repository/user/user_repository.dart';
import '../routes/app_pages.dart';

class UserController extends GetxController {
  UserModel? userModel;
  final IUserRepository _userRepo = UserRepository();
  void getProfile() async {
    if (UserManager.isAdmin) {
      return;
    }
    var result = await _userRepo.getProfile();
    if (result.isSuccess) {
      userModel = result.success;
    } else {
      AppSnackBar.showSnackBar('Profile fetching failed');
    }
  }

  void logOut() {
    UserManager.logOutUser();
    Get.offNamed(Routes.SPLASH);
  }
}
