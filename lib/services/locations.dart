//Used for taking live location of citizen
import 'package:location/location.dart';
import 'constants.dart' as c;


class LOC {
  Location location = Location();
  bool _serviceEnabled = true;
  late PermissionStatus _permissionGranted ;
  Future<void> getUserLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    LocationData _locationData = await location.getLocation();
    c.latitudesC[c.curr] = _locationData.latitude;
    c.longitudesC[c.curr] = _locationData.longitude;
    print(_locationData);
  }

}