import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:control_monitoring_system_app/modules/information/view_model/information_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class InformationView extends GetView<InformationViewModel>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("SCM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff04063E)),),
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back)),
        actions: [
          Stack(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.notifications,color: Colors.black,)),
            Positioned(
                bottom: 13,
                right:18,
                child: Container(

                  decoration: BoxDecoration(
                      color: Color(0xffDF2222),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  height: 9,width: 9,))
          ],)

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
              child: Image.asset("assets/images/desktop.png")),
          SizedBox(height: 12,),
          Text("No data is here",style: AppTextStyle.regularFontStyle.copyWith(fontSize: 14),),
          Text("please wait,",style: AppTextStyle.regularFontStyle.copyWith(fontSize: 14),),
        ],
      ),
    );
    
  }
  
}