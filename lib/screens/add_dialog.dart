import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:drones/widgets/drone_listing.dart';
import 'package:drones/widgets/widgets.dart';
import 'package:flutter/material.dart';

AlertDialog addDialog(BuildContext context) {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final manufacturerController = TextEditingController();
  final colorController = TextEditingController();
  final idTagController = TextEditingController();
  final weightController = TextEditingController();
  final distanceController = TextEditingController();
  final speedController = TextEditingController();

  Future createUser(DroneListing user) async {
    final docUser = FirebaseFirestore.instance.collection('drones').doc();
    user.idTag = docUser.id;

    final json = user.toJson();
    //Creates document and writes data to Firebase
    await docUser.set(json);
  }

  return AlertDialog(
    title: const Text('Add Drone for Delivery'),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentPadding: const EdgeInsets.all(20),
    actionsPadding: const EdgeInsets.all(20),
    content: Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: manufacturerController,
            decoration: const InputDecoration(
              labelText: 'Manufacturer',
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: colorController,
                  decoration: const InputDecoration(
                    labelText: 'Color',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: idTagController,
                  decoration: const InputDecoration(
                    labelText: 'ID Tag',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Weight',
                    suffixText: 'kg',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: distanceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Distance',
                    suffixText: 'km',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: speedController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Speed',
                    suffixText: 'km/h',
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
    actions: [
      button(
        onPressed: () {
          Navigator.of(context).pop();
        },
        text: 'Cancel',
      ),
      button(
        onPressed: () {
          final user = DroneListing(
            name: nameController.text,
            color: colorController.text,
            weight: '${weightController.text} kg',
            distance: '${distanceController.text} km',
            speed: '${speedController.text} km/hr',
            manufacturer: manufacturerController.text,
          );
          createUser(user);

          Navigator.of(context).pop();
        },
        text: 'Add Drone',
      )
    ],
  );
}
