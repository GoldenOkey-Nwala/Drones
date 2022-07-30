import 'package:drones/add_dialog.dart';
import 'package:drones/colors.dart';
import 'package:drones/drone_card.dart'; 
import 'package:drones/style.dart';
import 'package:drones/widgets.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Let\'s find your', style: largeText()),
                Text('Drones!',
                    style: largeText(color: AppColors.primaryColor)),
                const SizedBox(height: 8),
                Text('Safe and reliable door to door services.',
                    style: mediumText()),
                const SizedBox(height: 30),
                TextField(decoration: textFieldDecoration('Search')),
                const SizedBox(height: 30),
                const DroneCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
