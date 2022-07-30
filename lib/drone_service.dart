import 'package:drones/drone_listing.dart';
import 'package:flutter/material.dart';

class DroneService {
  List<DroneListing> getDroneList() {
    return [
      const DroneListing(
        name: 'Zie Drone Fv77',
        colorDescription: 'Sharp Yellow',
        idTag: 'OP-XWRTYG6',
        weight: '53',
        distance: '10',
        speed: '50',
        manufacturer: 'Jubilee Test',
      )
    ];
  }
}