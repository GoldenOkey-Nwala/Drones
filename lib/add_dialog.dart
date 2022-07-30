import 'package:drones/widgets.dart';
import 'package:flutter/material.dart';

AlertDialog addDialog(BuildContext context) {
  final formKey = GlobalKey<FormState>();
  return AlertDialog( 
    title: const Text('Add Drone for Delivery'),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    contentPadding: const EdgeInsets.all(20),
    actionsPadding: const EdgeInsets.all(20),
    content: Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              // hintText: 'Enter the name of the Drone',
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Manufacturer',
              // hintText: 'Enter the name of the Manufacturer',
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Color',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ID Tag',
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Weight',
                    suffixText: 'kg',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Distance',
                    suffixText: 'km',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
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
        onPressed: () {},
        text: 'Add Drone',
      )
    ],
  );
} 