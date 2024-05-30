import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project/presentation/controllers/pet/pet_binding.dart';
import 'package:project/utils/routes.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AuthBinding(),
      initialRoute: RouteHelper.getSplashRoute(),
      // theme : themeDark(context),
      getPages: RouteHelper.routes,
    );
  }
}
