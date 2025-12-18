import 'package:control_monitoring_system_app/modules/dashboard/view/dashboard_view.dart';
import 'package:control_monitoring_system_app/modules/login/view/login_view.dart';
import 'package:control_monitoring_system_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: AppRoutes.LOGIN,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: const ColorScheme.light(surface: Colors.white, surfaceTint: Colors.transparent,),
      textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.grey,
          cursorColor: Colors.black
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DashboardView(),
    );
  }
}

