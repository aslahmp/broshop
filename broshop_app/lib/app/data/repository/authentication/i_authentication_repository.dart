import '../../../../infrastructure/networking/index.dart';

abstract class IAuthenticationRepository {
  Future<Result> signInWithGoogle();
  Future<Result> signIn(String email, String password);
}
