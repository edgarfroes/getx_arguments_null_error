import 'package:get/get.dart';
import 'package:getx_arguments_null_error/models/complex_model.dart';

class Page2Controller extends GetxController {
  late final Rx<ComplexModel?> model = Rx<ComplexModel?>(null);

  @override
  void onInit() {
    super.onInit();

    // Get.arguments shouldn't be null, but will be because Page1Controller
    // called Get.showSnackbar "in the same thread".
    if (Get.arguments != null) {
      model.value = Get.arguments['model'];
    }
  }
}
