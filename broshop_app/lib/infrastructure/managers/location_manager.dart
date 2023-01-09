import 'package:location/location.dart';

class LocationManager {
  static final LocationManager _sharedInstance = LocationManager._internal();
  factory LocationManager() {
    return _sharedInstance;
  }
  LocationManager._internal();
  static LocationManager get instance => _sharedInstance;

  Future<LocationData?> getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }
    locationData = await location.getLocation();

    return locationData;
  }
}
