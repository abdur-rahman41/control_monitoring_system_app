import 'package:control_monitoring_system_app/modules/details/view_model/details_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends GetView<DetailsViewModel> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SCM"),),
      body: Container(
        padding: EdgeInsets.fromLTRB(0,16,0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Today Data"),
                SizedBox(width: 8,),
                Container(
                  height: 8,
                  width:8,
                  decoration: BoxDecoration(
                      color: Color(0xff0096FC),
                      borderRadius:BorderRadius.circular(4)
                  ),
                ),
                Text("Today Data"),
                SizedBox(width: 8,),
                Container(
                  height: 8,
                  width:8,
                  decoration: BoxDecoration(
                      color: Color(0xff0096FC),
                      borderRadius:BorderRadius.circular(4)
                  ),
                ),
        
            ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                        color: Color(0xffB6B8D0)
                    )
                  ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Energy Chart",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                        Text("5.53KW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                      ],),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8,vertical:8),
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
                        Container(
                          color: Colors.grey,
                          height: 32,
                        width:1),
                        Column(
                          children: [
                            Text("Data : 2798.50"),
                            Text("Data : 2798.50")
                          ],
                        )
        
                      ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}