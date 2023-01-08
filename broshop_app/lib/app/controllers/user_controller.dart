import 'package:broshop_app/app/data/model/user_model.dart';
import 'package:get/get.dart';

import '../../infrastructure/index.dart';
import '../data/repository/user/i_user_repository.dart';
import '../data/repository/user/user_repository.dart';

class UserController extends GetxController {
  UserModel? userModel;
  final IUserRepository _userRepo = UserRepository();
  void getProfile() async {
    var result = await _userRepo.getProfile();
    if (result.isSuccess) {
      userModel = result.success;
    } else {
      AppSnackBar.showSnackBar('Profile fetching failed');
    }
  }
}
