import 'package:drones/theme/style.dart';
import 'package:drones/widgets/drone_listing.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drones/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget addDrone(DroneListing user) {
  final docUser = FirebaseFirestore.instance.collection('drones').doc();
  user.idTag = docUser.id;
  return Expanded(
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 23, 17, 45),
      decoration: cardDecoration(),
      child: Stack(
        children: [
          droneImage('drone'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${user.name} \nSharp ${user.color}', style: bigText()),
              const SizedBox(height: 26),
              Text('PARAMETERS', style: mediumText(size: 14)),
              const SizedBox(height: 17),
              Text('ID Tag: ${user.color}', style: bigText(size: 14)),
              const SizedBox(height: 26),
              Row(
                children: [
                  properties('assets/images/weight.png', '${user.weight} kg'),
                  const SizedBox(width: 11),
                  properties(
                      'assets/images/distance.png', '${user.distance} km'),
                  const SizedBox(width: 11),
                  properties('assets/images/speed.png', '${user.speed} km/h'),
                ],
              ),
              const SizedBox(height: 15),
              Text('Manufacturer: ${user.manufacturer}'),
              const SizedBox(height: 8),
              Text('SERVICED', style: bigText(size: 12)),
              const SizedBox(height: 8),
              Text(
                DateFormat('EEEE, dd MMMM, yyyy').format(DateTime.now()),
                style: mediumText(size: 14),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('£450', style: headerText()),
                  button(onPressed: () {}, text: 'Rent this Drone')
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
