import '../config.dart';

enum EndPoints { login }

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
    }
  }
}
