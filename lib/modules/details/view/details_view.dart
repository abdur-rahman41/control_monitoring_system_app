import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:control_monitoring_system_app/core/values/colors.dart';
import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:control_monitoring_system_app/core/widgets/data_cart.dart';
import 'package:control_monitoring_system_app/core/widgets/data_item.dart';
import 'package:control_monitoring_system_app/modules/details/view_model/details_view_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class DetailsView extends GetView<DetailsViewModel> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(title: Text("SCM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff04063E)),),
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
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
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top:0,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Container(
                  color: const Color(0xffD6DFEA),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  margin: EdgeInsets.symmetric(vertical: 20),

                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0,16,0, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: const Border(
                            top: BorderSide(
                              color: Colors.grey,
                              width: 1.5,
                            ),
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              // height: 300,
                              child: Column(
                                children: [

                                  Obx((){
                                    var firstEntry = controller.categoryTotals.entries.elementAt(0);
                                    var secondEntry = controller.categoryTotals.entries.elementAt(1);
                                    var thirdEntry = controller.categoryTotals.entries.elementAt(2);
                                    return Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                                            padding: EdgeInsets.only(top:30),

                                            height:200,
                                            decoration: BoxDecoration(
                                              // color: Color(0xFFF5F6F7),
                                                borderRadius: BorderRadius.circular(16)

                                            ),
                                            child: PieChart(

                                              PieChartData(
                                                startDegreeOffset: 125,
                                                sectionsSpace: 0.2,
                                                centerSpaceRadius: 70.0,
                                                sections: getPieSections(controller.categoryTotals,controller),

                                                // sections: [
                                                //   PieChartSectionData(
                                                //       value: 10,
                                                //       color: Color(0xFF224BF0),
                                                //       showTitle: true,
                                                //       radius: 25,
                                                //       title: '60%'
                                                //
                                                //
                                                //   ),
                                                //   PieChartSectionData(
                                                //       value: 6,
                                                //       color: Color(0xFF68A4EC),
                                                //       showTitle: true,
                                                //       radius: 20,
                                                //       title: '10%'
                                                //   ),
                                                //   PieChartSectionData(
                                                //       value: 14,
                                                //       color: Color(0xFFA9CBF4),
                                                //       showTitle: true,
                                                //       radius: 22,
                                                //       title: '30%'
                                                //   ),
                                                //   PieChartSectionData(
                                                //     value: 30,
                                                //     color: Colors.transparent,
                                                //     showTitle: false,
                                                //     radius: 42,
                                                //   ),
                                                // ],
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                              top: 110,
                                              left: 165,
                                              child:  Container(
                                                padding: EdgeInsets.all(3),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  crossAxisAlignment : CrossAxisAlignment.center,


                                                  children: [
                                                    controller.isDataView.value ?  Text("57.00",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),) : Text("8897455",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                                                    controller.isDataView.value ?  Text("kWh/Sqft",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),) : Text("TK",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                                  ],
                                                ),


                                              )
                                          ),

                                        ],
                                      ),
                                    );}) ,

                                ],
                              ),
                            ),
                            Obx(()=> controller.isDataView.value ? Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      controller.isTodayData.value=true;
                                    },
                                    child: Row(children: [
                                      Container(
                                        height: 8,
                                        width:8,
                                        decoration: BoxDecoration(
                                            color: controller.isTodayData.value ? Color(0xff0096FC):Color(0xff646984),
                                            borderRadius:BorderRadius.circular(4)
                                        ),
                                      ),
                                      SizedBox(width: 8,),
                                      Text("Today Data",style: AppTextStyle.semiboldFontStyle.copyWith( fontSize: 14, color: controller.isTodayData.value ? Color(0xff0096FC):Color(0xff646984),),),
                                      SizedBox(width: 32,),

                                    ],),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      controller.isTodayData.value=false;

                                    },
                                    child: Row(children: [
                                      Container(
                                        height: 8,
                                        width:8,
                                        decoration: BoxDecoration(
                                            color: !controller.isTodayData.value ? Color(0xff0096FC):Color(0xff646984),
                                            borderRadius:BorderRadius.circular(4)
                                        ),
                                      ),
                                      SizedBox(width: 8,),
                                      Text("Custom Date Data",style: AppTextStyle.semiboldFontStyle.copyWith( fontSize :14, color: !controller.isTodayData.value ? Color(0xff0096FC):Color(0xff646984),),),

                                    ],),
                                  ),




                                ],
                              ),
                            ): Container(),),
                            Obx(()=>controller.isDataView.value && !controller.isTodayData.value ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    controller.selectedDateRange.clear();
                                    _showDateRangePicker(context);
                                  },
                                  child: Container(
                                    height: 34,
                                    margin: EdgeInsets.only(top: 10, left: 0, right: 0),
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xffA5A7B9), width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("From date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff646984)),),
                                        SizedBox(width: 24,),
                                        // Obx(() => Text(controller.fromDate.value, style: TextStyle(fontSize: 14, color: AppColors.color737375),),),
                                        Icon(Icons.calendar_month_outlined, color: AppColors.color737375,)
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap:(){
                                    controller.selectedDateRange.clear();
                                    _showDateRangePicker(context);
                                  },
                                  child: Container(
                                    height: 34,
                                    margin: EdgeInsets.only(top: 10, left: 0, right: 0),
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xffA5A7B9), width: 1),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        // Obx(() => Text(controller.fromDate.value, style: TextStyle(fontSize: 14, color: AppColors.color737375),),),
                                        Text("To date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff646984)),),
                                        SizedBox(width: 24,),
                                        Icon(Icons.calendar_month_outlined, color: AppColors.color737375,)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 34,
                                  width: 34,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 6,vertical:4),
                                  decoration: BoxDecoration(
                                      color: Color(0xffE2EBF1),
                                      border: Border.all(
                                          color: AppColors.primaryColor
                                      ),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Icon(Icons.search,color: AppColors.primaryColor),
                                )
                              ],):Container()),
                            Obx(()=> controller.isDataView.value && !controller.isTodayData.value ?   Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  color: Colors.white
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
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
                                      margin: EdgeInsets.symmetric(horizontal: 16),

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Energy Chart",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                                          Text("20.05KW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                                        ],),
                                    ),
                                    DataCart(),
                                    DataCart(),
                                    DataCart(),
                                    DataCart(),


                                  ],
                                ),
                              ),
                            ) : Container()),
                            Obx(()=> controller.isDataView.value ?   Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  color: Colors.white
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
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
                                      margin: EdgeInsets.symmetric(horizontal: 16),

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Energy Chart",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                                          Text("5.53KW",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                                        ],),
                                    ),
                                    DataCart(),
                                    DataCart(),
                                    DataCart(),
                                    DataCart(),


                                  ],
                                ),
                              ),
                            ) : Container()),
                            Obx((){
                              return !controller.isDataView.value && controller.isExpanded.value ?  Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Color(0xffA5A7B9)
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Color(0xffA5A7B9)
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset("assets/images/chart.png"),
                                              SizedBox(width: 8,),
                                              Text("Data & cost info",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                            ],
                                          ),
                                          GestureDetector(
                                              onTap:(){
                                                controller.isExpanded.value = false;
                                              },
                                              child: Container(child: Image.asset("assets/images/up_arrow.png"),))


                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                        child: DataItem()),
                                    SizedBox(height: 12,),
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                        child: DataItem()),
                                    SizedBox(height: 12,),
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                        child: DataItem()),

                                  ],
                                ),
                              ) : !controller.isDataView.value && !controller.isExpanded.value ? GestureDetector(
                                onTap: (){
                                  controller.isExpanded.value=true;
                                },
                                child:  Container(
                                  margin: EdgeInsets.symmetric(horizontal: 24),
                                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Color(0xffA5A7B9)
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset("assets/images/chart.png"),
                                          SizedBox(width: 8,),
                                          Text("Data & cost info",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                      GestureDetector(
                                          onTap:(){
                                            controller.isExpanded.value = true;
                                          },
                                          child: Container(child: Image.asset("assets/images/down_arrow.png"),))


                                    ],
                                  ),
                                ),): Container();
                            }),





                          ],
                        ),
                      ),


                    ],
                  )
              ),


              Positioned(
                top: 8,
                left: 0,
                right: 0,
                child: Obx(()=>Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                  margin: EdgeInsets.symmetric(horizontal: 32,vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color(0xffA5A7B9)
                      ),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.isDataView.value = true;
                        },
                        child: Container(child: Row(children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: controller.isDataView.value ? Color(0xff0096FC):Color(0xff646984),
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle

                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                              decoration: BoxDecoration(
                               color: controller.isDataView.value ? Color(0xff0096FC):Color(0xff646984),
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(34)
                              ),

                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("Data View",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 16,color: controller.isDataView.value ? Color(0xff0096FC):Color(0xff646984)),),
                        ],),),
                      ),
                      GestureDetector(
                        onTap: (){
                          controller.isDataView.value = false;
                        },
                        child: Container(child: Row(children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 1,vertical: 1),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: !controller.isDataView.value ? Color(0xff0096FC):Color(0xff646984),
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle

                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                              decoration: BoxDecoration(
                                color: !controller.isDataView.value ? Color(0xff0096FC):Color(0xff646984),
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(34)
                              ),

                            ),
                          ),
                          SizedBox(width: 8,),
                          Text("Revenue View",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 16,color: !controller.isDataView.value ? Color(0xff0096FC):Color(0xff646984))),
                        ],),),
                      ),



                    ],
                  ),),)
              ),

            ],
          ),

            // Expanded(child: Container(color: Colors.white,))
        ],
      ),
    );
  }


  void _showDateRangePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Select Date',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.single,
                      lastDate: DateTime.now(),
                      selectedDayHighlightColor: AppColors.primaryColor,
                      daySplashColor: AppColors.primaryColor.withValues(alpha: 0.4)
                  ),
                  value: controller.selectedDateRange,
                  onValueChanged: (List<DateTime?> values) {
                    controller.selectedDateRange = values;
                    controller.update();
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [

                      Expanded(child: ZoomTapAnimation(
                        onTap: (){
                          Get.back();
                        },
                        child: Container(
                          height: 45,
                          margin: EdgeInsets.only(left: 20, right: 8),
                          decoration: BoxDecoration(
                              border: Border.all( color: AppColors.primaryColor, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          alignment: Alignment.center,
                          child: Text("Cancel",
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                        ),
                      ),),

                    ],
                  ),
                )

              ],
            ),
          ),
        );
      },
    ).then((selectedRange) {
    });
  }

}







class _LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const _LegendItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 12, height: 12, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}


List<PieChartSectionData> getPieSections(Map<String, double> data,DetailsViewModel controller) {
  double total = 0;
  for (var val in data.values) {
    total += val;
  }


  List<PieChartSectionData> sections = [];
  var firstEntry = controller.categoryTotals.entries.elementAt(0);
  var secondEntry =controller.categoryTotals.entries.elementAt(1);
  var thirdEntry = controller.categoryTotals.entries.elementAt(2);
  Map<String, Color> categoryColors = {

    "${firstEntry.key}": Color(0xFF68A4EC),
    "${secondEntry.key}": Color(0xFFA9CBF4),
    "${thirdEntry.key}": Color(0xFF224BF0),
  };



  data.forEach((category, amount) {
    double percentage = (amount / total) * 100;
    sections.add(
      PieChartSectionData(
        value: amount,
        color: categoryColors[category] ?? Colors.grey,
        radius: 16,
        showTitle: false,
      ),
    );
  });


  sections.add(
    PieChartSectionData(
      value: total/4,
      color: Colors.transparent,
      showTitle: false,
      radius: 42,
    ),
  );

  return sections;
}



