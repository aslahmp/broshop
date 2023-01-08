import '../../../../infrastructure/networking/index.dart';

abstract class IAuthenticationRepository {
  Future<Result> signInWithGoogle();
}
