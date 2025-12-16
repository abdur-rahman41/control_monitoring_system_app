import 'package:control_monitoring_system_app/core/values/colors.dart';
import 'package:control_monitoring_system_app/core/values/text_style.dart';
import 'package:control_monitoring_system_app/core/widgets/button.dart';
import 'package:control_monitoring_system_app/core/widgets/input_field.dart';
import 'package:control_monitoring_system_app/modules/login/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginView extends GetView<LoginViewModel>{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      // appBar: AppBar(title: Text("Login"),),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/scube.png"),
            SizedBox(height: 20,),
            Text("SCUBE",style: AppTextStyle.semiboldFontStyle,),
            Text("Control & Monitoring System",style: AppTextStyle.semiboldFontStyle.copyWith(fontSize:20 )),
            SizedBox(height: 80,),
            Expanded(child:  Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(height: 32,),
                  Text("Login",style:AppTextStyle.boldFontStyle ,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: CommonInputField.inputField(controller: controller.userController, hint: 'Username'),),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child:  CommonInputField.inputField(controller: controller.passwordController, hint: 'password')),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot password"),),
                  GlobalButton.simpleBtn(text: "Login", onTap: (){},background: AppColors.primaryColor),
                  Text("Don’t have any account? Register Now")




                ],
              ),)),

        

          ],
        ),
      ),
    );
  }
  
}