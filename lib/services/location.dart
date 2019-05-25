import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;
  double _total;
  Position _position;

  Future<void> getCurrentLocation() async {
    try {
      _position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      _latitude = _position.latitude;
      _longitude = _position.longitude;
    } catch (e) {
      print(e);
    }
  }

  double get latitude => _latitude;

  set latitude(double value) {
    _latitude = value;
  }

  double get longitude => _longitude;

  set longitude(double value) {
    _longitude = value;
  }

  double get total => _total;

  set total(double value) {
    _total = value;
  }
}
