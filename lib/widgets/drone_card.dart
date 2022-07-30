import 'package:drones/theme/style.dart';
import 'package:drones/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DroneCard extends StatelessWidget {
  const DroneCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 23, 17, 45),
      decoration: cardDecoration(),
      child: Stack(
        children: [
          droneImage('drone'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Zie Drone Fv20 \nSharp Orange', style: bigText()),
              const SizedBox(height: 26),
              Text('PARAMETERS', style: mediumText(size: 14)),
              const SizedBox(height: 17),
              Text('ID Tag: OP-XWD1QW8', style: bigText(size: 14)),
              const SizedBox(height: 26),
              Row(
                children: [
                  properties('assets/images/weight.png', '60kg'),
                  const SizedBox(width: 11),
                  properties('assets/images/distance.png', '5km'),
                  const SizedBox(width: 11),
                  properties('assets/images/speed.png', '50km/h'),
                ],
              ),
              const SizedBox(height: 15),
              const Text('Manufacturer: Golden Drone Company'),
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
    );
  }
}
