import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_arguments_null_error/page_1/page_1_controller.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);

  static const route = '/Page1';

  final controller = Get.put(Page1Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: controller.proceed,
          child: Text('Proceed'),
        ),
      ),
    );
  }
}
