import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyle {
  static TextStyle smallFontStyle = TextStyle(color: Color(0xffD9D9D9),fontSize: 10,fontWeight: FontWeight.w400);
  static TextStyle regularFontStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff646984));
  static TextStyle mediumFontStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.color737375);
  static TextStyle semiboldFontStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white);
  static TextStyle boldFontStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff082438));
}