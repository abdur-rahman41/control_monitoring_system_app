import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  const DataItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Row(children: [
          Text("Data",style: AppTextStyle.regularFontStyle,),
          SizedBox(width: 16,),
          Text(": 2798.50 (29.53%)",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 12,color: Color(0xff04063E)),)
        ],),
        Row(children: [
          Text("Cost",style: AppTextStyle.regularFontStyle,),
          SizedBox(width: 16,),
          Text(": 35689 ৳",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 12,color: Color(0xff04063E)),)
        ],)

      ],
    ),);
  }
}
