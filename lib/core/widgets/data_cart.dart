import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:flutter/material.dart';

class DataCart extends StatelessWidget {
  const DataCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical:2),
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
              color: Color(0xffB6B8D0)
          )
      ),
      child: Row(children: [
        Column(
          children: [
            Container(
              height: 8,
              width:8,
              decoration: BoxDecoration(
                  color: Color(0xff0096FC),
                  borderRadius:BorderRadius.circular(4)
              ),
            ),
            Text("Data A")

          ],
        ),
        SizedBox(width: 4,),
        Container(
            color: Colors.grey,
            height: 32,
            width:1),
        SizedBox(width: 8,),
        Column(
          children: [
            Row(children: [
              Text("Data",style: AppTextStyle.regularFontStyle,),
              SizedBox(width: 16,),
              Text(": 2798.50",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 12,color: Color(0xff04063E)),)
            ],),
            Row(children: [
              Text("Cost",style: AppTextStyle.regularFontStyle,),
              SizedBox(width: 16,),
              Text(": 2798.50",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 12,color: Color(0xff04063E)),)
            ],)

          ],
        )

      ],
      ),
    );
  }
}