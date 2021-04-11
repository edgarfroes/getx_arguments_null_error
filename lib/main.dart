import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_arguments_null_error/page_1/page_1.dart';
import 'package:getx_arguments_null_error/page_2/page_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get.arguments null error',
      initialRoute: Page1.route,
      getPages: [
        GetPage(
          name: Page1.route,
          page: () => Page1(),
        ),
        GetPage(
          name: Page2.route,
          page: () => Page2(),
        ),
      ],
    );
  }
}
