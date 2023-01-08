import '../../../../infrastructure/networking/index.dart';

abstract class IUserRepository {
  Future<Result> getProfile();
}
