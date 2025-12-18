import 'package:control_monitoring_system_app/core/values/colors.dart';
import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:control_monitoring_system_app/core/widgets/button.dart';
import 'package:control_monitoring_system_app/core/widgets/input_field.dart';
import 'package:control_monitoring_system_app/modules/login/view_model/login_view_model.dart';
import 'package:control_monitoring_system_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginView extends GetView<LoginViewModel>{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       backgroundColor: AppColors.primaryColor,
      // appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: [
          Container(
            color:  AppColors.primaryColor,
            child:
          Column(
            children: [
              SizedBox(height: 82,),
              Image.asset("assets/images/scube.png"),
              SizedBox(height: 20,),
              Text("SCUBE",style: AppTextStyle.semiboldFontStyle,),
              Text("Control & Monitoring System",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize:20 )),
              SizedBox(height: 80,),
            ],
          ),),

          Expanded(child:  Container(
            
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                SizedBox(height: 32,),
                Text("Login",style:AppTextStyle.boldFontStyle ,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 7),
                  child: CommonInputField.inputField(controller: controller.userController, hint: 'Username'),),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 7),
                    child:  CommonInputField.inputField(controller: controller.passwordController, hint: 'Password')),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password?",
                    style: AppTextStyle.regularFontStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationThickness: 0.8, // optional
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child:  GlobalButton.simpleBtn(text: "Login", borderRadius:10 ,onTap: (){
                  Get.offAndToNamed(AppRoutes.DASHBOARD);
                },background: AppColors.primaryColor),),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have any account? ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xff5E5E5E)),),
                      Text("Register Now",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.primaryColor),)
                  ],
                  ),
                ),






              ],
            ),)),




        ],
      ),
    );
  }
  
}