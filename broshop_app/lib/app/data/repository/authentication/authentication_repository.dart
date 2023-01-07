import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'i_authentication_repository.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );
  @override
  Future<void> signInWithGoogle() async {
    try {
      await _googleSignIn.signOut();
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser != null) {
        googleUser.displayName;
      }
    } catch (e) {}
  }
}
