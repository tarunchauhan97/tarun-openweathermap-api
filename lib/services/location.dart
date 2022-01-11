import 'package:geolocator/geolocator.dart';

class Location {

  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;

      //NetworkHelper networkHelper = NetworkHelper();
      //networkHelper.getdata(latitude, longitude);

    } catch (e) {
      print(e);
    }
  }
}
