import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drones/screens/add_dialog.dart';
import 'package:drones/theme/colors.dart';
import 'package:drones/theme/style.dart';
import 'package:drones/widgets/add_drone.dart';
import 'package:drones/widgets/drone_card.dart';
import 'package:drones/widgets/drone_listing.dart';
import 'package:drones/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DronePage extends StatefulWidget {
  const DronePage({Key? key}) : super(key: key);

  @override
  State<DronePage> createState() => _DronePageState();
}

class _DronePageState extends State<DronePage> {
  
  Stream<List<DroneListing>> readUsers() => FirebaseFirestore.instance
      .collection('drones')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => DroneListing.fromJson(doc.data()))
          .toList()); 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          onPressed: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) => addDialog(context));
          },
          child: const Icon(Icons.add, size: 33),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Let\'s find your', style: largeText()),
              Text('Drones!', style: largeText(color: AppColors.primaryColor)),
              const SizedBox(height: 8),
              Text('Safe and reliable door to door services.',
                  style: mediumText()),
              const SizedBox(height: 30),
              TextField(decoration: textFieldDecoration('Search')),
              const SizedBox(height: 30),
              const DroneCard(),
              const SizedBox(height: 30),
              StreamBuilder<List<DroneListing>>(
                stream: readUsers(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                  // final users = snapshot.data!;  
                   print(snapshot.data); 
                    return Text('Something went wrong! ${snapshot.error}');
                  } else 
                  if (!snapshot.hasData) {
                  final users = snapshot.data;  
                    

                    return ListView(
                      children: users!.map(addDrone).toList(),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  } 
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
