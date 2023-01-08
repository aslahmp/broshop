import '../config.dart';

enum EndPoints {
  login,
  user,
}

class APIEndPoints {
  static String urlString(EndPoints endPoint) {
    return AppConfig.baseUrl + endPoint.endPointString;
  }
}

extension EndPointsExtension on EndPoints {
  String get endPointString {
    switch (this) {
      case EndPoints.login:
        return "/login";
      case EndPoints.user:
        return "/user";
    }
  }
}
