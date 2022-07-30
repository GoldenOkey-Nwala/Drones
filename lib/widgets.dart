import 'package:drones/colors.dart';
import 'package:drones/style.dart';
import 'package:flutter/material.dart';

Widget properties(String image, String text) {
  return Column(children: [
    Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: AppColors.secondaryColor,
        ),
        width: 48,
        height: 48,
        child: Center(child: Image.asset(image))),
    const SizedBox(height: 4),
    Text(text, style: mediumText(size: 12))
  ]);
}

Widget button({required Function() onPressed, required String text}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    onPressed: onPressed,
    child: Text(text),
  );
}

Widget droneImage(String image) {
  return Positioned(
    right: -15,
    top: 5,
    child: Image.asset(
      'assets/images/$image.png',
      width: 200,
      height: 120,
    ),
  );
}

BoxDecoration cardDecoration() {
  return BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    color: AppColors.backgroundColor,
  );
}

InputDecoration textFieldDecoration(String hintText) {
  return InputDecoration(
    filled: true,
    fillColor: AppColors.backgroundColor,
    prefixIcon: const Icon(Icons.search_rounded),
    prefixIconColor: AppColors.lightTextColor,
    hintText: hintText,
    hintStyle: mediumText(color: AppColors.lightTextColor),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        borderSide: BorderSide.none),
  );
}
