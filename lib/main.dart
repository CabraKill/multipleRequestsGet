import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/homeBinding.dart';
import 'pages/home/homePage.dart';

void main() {
  runApp(GetMaterialApp(
    getPages: [
      GetPage(
        name: "/home",
        page: () => HomePage(),
        binding: HomeBinding(),
      ),
      
    ],
    initialRoute: "/home",
  ));
}
