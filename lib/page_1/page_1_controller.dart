import 'package:get/get.dart';
import 'package:getx_arguments_null_error/models/complex_model.dart';
import 'package:getx_arguments_null_error/page_2/page_2.dart';

class Page1Controller extends GetxController {
  final model = ComplexModel(
    arg1: 'value 1',
    arg2: 'value 2',
    arg3: 'value 3',
  );

  proceed() async {
    // The "model" argument below should be visible in Page3 Get.arguments
    Get.toNamed(Page2.route, arguments: {
      'model': model,
    });

    // Triggering this snackBar will make the routing forget about
    // the arguments being passed to Page3, maybe because it's running
    // "in the same thread" and messing with Get's global Context?
    Get.showSnackbar(GetBar(
      title: 'Snack bar',
      message: 'Or should I say, "sneaky bar"',
    ));
  }
}
