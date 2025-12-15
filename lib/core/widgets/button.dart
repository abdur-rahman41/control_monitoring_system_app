import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';



class GlobalButton {
  static simpleBtn(
      {required String text,
        Map<String, dynamic>? data,
        double? width,
        double? height = 55,
        Color? background,
        double? borderRadius,
        required VoidCallback onTap}) =>
      ZoomTapAnimation(
        onTap: onTap,
        child: Container(
          width: Get.width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: background ?? Colors.amber,
              borderRadius: BorderRadius.circular(borderRadius ?? 24)),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      );

  static backButton({VoidCallback? onTap}) => ZoomTapAnimation(
    onTap: onTap ??
            () {
          Get.back();
        },
    child: Container(
      height: 25,
      width: 25,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(100)),
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
  );
}
