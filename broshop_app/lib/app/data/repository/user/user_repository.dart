import 'package:broshop_app/app/data/model/user_model.dart';
import 'package:result_type/src/result.dart';

import '../../../../infrastructure/managers/index.dart';
import '../../../../infrastructure/networking/index.dart';
import 'i_user_repository.dart';

class UserRepository implements IUserRepository {
  @override
  Future<Result> getProfile() async {
    final _helper = ApiBaseHelper();
    try {
      var resultJson = await _helper.get(
        url: Uri.parse(
            '${APIEndPoints.urlString(EndPoints.user)}/${UserManager.userId}'),
      );
      var userModel = UserModel.fromJson(resultJson);
      return Success(userModel);
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
