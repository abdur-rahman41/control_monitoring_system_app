import 'package:control_monitoring_system_app/core/values/colors.dart';
import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:control_monitoring_system_app/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:control_monitoring_system_app/modules/details/view/details_view.dart';
import 'package:control_monitoring_system_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class DashboardView extends GetView<DashboardViewModel>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffD6DFEA),
      appBar: AppBar(title: Text("SCM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff04063E)),),
        leading: Icon(Icons.arrow_back),
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
        children: [
          ///  TOP SECTION
          Expanded(
             flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffB6B8D0)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          color: Color(0xff0096FC),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Text("Summary", style: TextStyle(color: Colors.white)),
                      ),
                      Text("SLD",style: AppTextStyle.regularFontStyle,),
                      Padding(
                        padding: EdgeInsets.only(right: 32),
                        child: Text("Data",style: AppTextStyle.regularFontStyle,),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  // Divider(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text("Electricity",style: AppTextStyle.semiboldFontStyle.copyWith(color: Color(0xff979797),fontSize: 16),),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff979797),
                  ),

                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  //   decoration: BoxDecoration(
                  //       color: Color(0xffEBEDF0),
                  //       // borderRadius: BorderRadius.circular(12)
                  //       shape: BoxShape.circle
                  //
                  //   ),
                  //   child: Container(
                  //     padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  //     decoration: BoxDecoration(
                  //         color: Color(0xff398FC9),
                  //         shape: BoxShape.circle
                  //
                  //     ),
                  //     child: Container(
                  //       padding: EdgeInsets.symmetric(horizontal: 35,vertical: 35),
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         shape: BoxShape.circle,
                  //         // borderRadius: BorderRadius.circular(34)
                  //       ),
                  //       child: Text("jjjjj",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                  //     ),
                  //   ),
                  // ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 14,0,7),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                    decoration: BoxDecoration(
                        color: Color(0xff398FC9),
                        shape: BoxShape.circle

                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 35),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(34)
                      ),
                      child: Column(
                        children: [
                          Text("Total Power",style: AppTextStyle.regularFontStyle.copyWith(color: Color(0xff04063E)),),
                          Text("5.53KW",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize: 16,color: Color(0xff04063E)),),
                        ],
                      )
                    ),
                  ),
                  Obx(() {
                    final totalAmount = controller.totalAmount.value;
                    final totalSavings = controller.totalSavingsAmount.value;

                    // Prevent divide-by-zero or NaN
                    final progress = (totalAmount > 0 && totalSavings.isFinite)
                        ? (totalSavings / totalAmount).clamp(0.0, 1.0)
                        : 0.0;

                    final totalWidth = MediaQuery.of(Get.context!).size.width - 72;
                    final textPosition = (totalWidth * progress).isFinite ? totalWidth * progress : 0.0;

                    return Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Stack(
                        children: [
                          GFProgressBar(
                            lineHeight: 30,
                            percentage: progress,
                            backgroundColor: Color(0xff6C99B8).withOpacity(0.20),
                            progressBarColor:  Color(0xff0096FC),
                          ),
                          progress < 0.04 ? Container(): Positioned(
                            left: ((textPosition -10) / 2).isFinite ? (textPosition-10) / 2 : 0,
                            top: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Source",
                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 4,
                            child: Text(
                              "Load",
                              style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  SizedBox(height: 8,),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    height: 2,
                    width: double.infinity,
                    color: Color(0xff979797),
                  ),
                  SizedBox(height: 16,),



                  // GFProgressBar(
                  //   lineHeight: 30,
                  //   percentage: 0.5,
                  //   backgroundColor: Color(0xff6C99B833),
                  //   progressBarColor: Color(0xff264DF0),
                  // ),




                  /// ✅ NOW Expanded works
                  // Expanded(
                  //   child: Scrollbar(
                  //     controller: controller.scrollController,
                  //     thumbVisibility: true,
                  //     child: ListView.builder(
                  //       controller: controller.scrollController,
                  //       itemCount: 4,
                  //       itemBuilder: (context, index) {
                  //         return Container(
                  //           padding: EdgeInsets.all(12),
                  //           margin: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                  //           decoration: BoxDecoration(
                  //               // color :Color(0xFFDFEBF4),
                  //               color: Color(0xffE5F4FE),
                  //               borderRadius: BorderRadius.circular(4),
                  //
                  //               border: Border.all(color: Color(0xffA5A7B9)),
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Row(
                  //                 children: [
                  //                   Icon(Icons.apartment),
                  //                   SizedBox(width: 8),
                  //                   Column(
                  //                     crossAxisAlignment: CrossAxisAlignment.start,
                  //                     children: [
                  //                       Row(
                  //                         children: [
                  //                           Container(
                  //                             height: 12,
                  //                             width: 12,
                  //                             decoration: BoxDecoration(
                  //                               color: Color(0xff78C6FF),
                  //                               shape: BoxShape.rectangle,
                  //                             ),
                  //                           ),
                  //                           SizedBox(width: 6),
                  //                           Text("Data View",style: TextStyle(color: Color(0xff04063E),fontSize: 14,fontWeight: FontWeight.w500),),
                  //                           SizedBox(width: 14,),
                  //                           Text("(Active)",style: TextStyle(color: Color(0xff0096FC),fontSize: 10,fontWeight: FontWeight.w500),)
                  //                         ],
                  //                       ),
                  //                       SizedBox(height: 4,),
                  //                       Text("Data1    : 356678",style: AppTextStyle.regularFontStyle,),
                  //                       SizedBox(height: 4,),
                  //                       Text("Data2    : 356678",style: AppTextStyle.regularFontStyle,),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //               GestureDetector(
                  //                   onTap:(){
                  //                     Get.offAndToNamed(AppRoutes.DETAILS);
                  //
                  //                   },
                  //                   child: Icon(Icons.arrow_forward_ios,size: 16,)),
                  //             ],
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // ),

              Expanded(
                child: Scrollbar(
                  controller: controller.scrollController,
                  thumbVisibility: true,
                  child: ListView.builder(
                    controller: controller.scrollController,
                    itemCount: controller.dataList.length,
                    itemBuilder: (context, index) {
                      final item = controller.dataList[index];

                      return Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        decoration: BoxDecoration(
                          color: Color(0xffE5F4FE),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: const Color(0xffA5A7B9)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SvgPicture.asset("assets/images/list1.png"),
                                Image.asset("assets/images/list1.png"),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                            color: item["indicatorColor"],
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          item["title"],
                                          style: const TextStyle(
                                            color: Color(0xff04063E),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(width: 14),
                                        Text(
                                          "(${item["status"]})",
                                          style: TextStyle(
                                            color: item["isActive"]
                                                ? const Color(0xff0096FC)
                                                : const Color(0xff646984),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text("Data1    : ${item["data1"]}",
                                        style: AppTextStyle.regularFontStyle),
                                    const SizedBox(height: 4),
                                    Text("Data2    : ${item["data2"]}",
                                        style: AppTextStyle.regularFontStyle),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.offAndToNamed(AppRoutes.DETAILS);
                              },
                              child: const Icon(Icons.arrow_forward_ios, size: 16),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )

              ],
              ),
            ),
          ),
          // SizedBox(width: 32,),

          /// 🔹 GRID SECTION

      Expanded(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          itemCount: controller.analysisGridList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 3.5,
          ),
          itemBuilder: (context, index) {
            final item = controller.analysisGridList[index];

            return GestureDetector(
              onTap: () {
                Get.toNamed(item["route"]);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffB6B8D0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Image.asset("assets/images/grid${index+1}.png"),
                    const SizedBox(width: 6),
                    Text(
                      item["title"],
                      style: AppTextStyle.semiboldFontStyle.copyWith(
                        fontSize: 14,
                        color: const Color(0xff646984),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      )


      ],
      ),

    );
  }

}