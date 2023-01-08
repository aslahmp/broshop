import 'package:broshop_app/infrastructure/managers/index.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../infrastructure/networking/index.dart';
import 'i_authentication_repository.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );
  final _helper = ApiBaseHelper();

  @override
  Future<Result> signInWithGoogle() async {
    try {
      await _googleSignIn.signOut();
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser != null) {
        var resultJson = await _helper.post(
            url: Uri.parse(APIEndPoints.urlString(EndPoints.user)),
            body: {
              "name": googleUser.displayName,
              "email": googleUser.email,
              "imageUrl": googleUser.photoUrl
            });

        UserManager.saveUserId(resultJson["id"].toString());
        UserManager.setUserAdminStatusStatus(false);
        UserManager.setUserLoginStatus(true);
        return Success('id');
      } else {
        return Failure('google User not fount');
      }
    } catch (e) {
      return Failure(e.toString());
    }
  }
}
