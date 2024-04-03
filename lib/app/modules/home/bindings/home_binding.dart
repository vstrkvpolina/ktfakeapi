import 'package:ktfakeapi/app/data/repositories/product_repository.dart';
import 'package:ktfakeapi/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(ProductRepository(Get.find())),
    );
  }
}