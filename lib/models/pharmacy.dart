import 'package:latlng/latlng.dart';

class Pharmacy {
  String pharmacyName;
  String pharmacyAddress;
  LatLng geoLocation;

  Pharmacy({
    this.pharmacyName = '',
    this.pharmacyAddress = '',
    this.geoLocation = const LatLng(0, 0),
  });
}
