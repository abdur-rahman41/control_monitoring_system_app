import 'dart:ui';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DetailsViewModel extends GetxController{

  RxBool isDataView = true.obs;
  RxBool isTodayData = true.obs;
  RxBool isExpanded = true.obs;
  List<DateTime?> selectedDateRange = [null, null];
  RxString fromDate = DateFormat("yyyy-MM-dd").format(DateTime.now()).toString().obs;
  RxString toDate = "".obs;

  late var firstEntry = categoryTotals.entries.elementAt(0);
  late var secondEntry = categoryTotals.entries.elementAt(1);
  late var thirdEntry = categoryTotals.entries.elementAt(2);

  RxMap<String, double> categoryTotals = RxMap<String, double>({
    "Rent": 100.0,
     "Shopping": 50.0,
    "Food": 150.0,
  });
  late Map<String, Color> categoryColors = {

    "${firstEntry}": Color(0xFF68A4EC),
     "${secondEntry}": Color(0xFFA9CBF4),
    "${thirdEntry}": Color(0xFF224BF0),
  };
}