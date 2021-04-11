import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_arguments_null_error/page_2/page_2_controller.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  static const route = '/Page3';

  final controller = Get.put(Page2Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return Text('Arg 1: ' + (controller.model.value?.arg1 ?? 'null'));
          }),
          Container(height: 10),
          Obx(() {
            return Text('Arg 2: ' + (controller.model.value?.arg2 ?? 'null'));
          }),
          Container(height: 10),
          Obx(() {
            return Text('Arg 3: ' + (controller.model.value?.arg3 ?? 'null'));
          }),
        ],
      ),
    );
  }
}
