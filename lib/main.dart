import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktfakeapi/app/data/services/api_service.dart';
import 'package:ktfakeapi/app/routes/app_pages.dart';

void main() async {
  await initServices();
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        getPages: AppPages.routes,
        initialRoute: AppPages.INITIAL,
    )
  );
}

Future<void> initServices() async {
  await Get.putAsync(() => ApiService().init());
}