import 'dart:math';

import 'package:haversine/haversine.dart';

double radianValue = (pi / 180);

class DistanceCalculator {
  double lat1 = 59.868133544921875;
  double lon1 = 10.810206413269043;
  double lat2 = 59.8414209;
  double lon2 = 10.7938048;

  DistanceCalculator(this.lat1, this.lon1, this.lat2, this.lon2);

  void calculation() {
    // double latRad = lat1 / radianValue;
    // double lonRad = lon1 / radianValue;
    // double lat2Rad = lat2 / radianValue;
    // double lon2Rad = lon2 / radianValue;
    //
    // var earthRadius = 6378137.0; // WGS84 major axis
    // double distance = 2 *
    //     earthRadius *
    //     asin(sqrt(pow(sin(lat2Rad - latRad) / 2, 2) +
    //         cos(latRad) * cos(lat2Rad) * pow(sin(lon2Rad - lonRad) / 2, 2)));

    final harvesine = new Haversine.fromDegrees(
        latitude1: lat1, longitude1: lon1, latitude2: lat2, longitude2: lon2);
    double distanceMain = harvesine.distance() / 1000;

    print('Distance from location 1 to 2 is : ${distanceMain.toInt()} km');
  }
}

//Uncomment the lines 16 to 25 for manually calculation
//Line 27 to 30 are using a package dependency: imported at Line 3