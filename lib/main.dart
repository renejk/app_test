import 'package:app_test/app/utils/palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      color: Palette.primaryColor,
      getPages: AppPages.routes,
    ),
  );
}
