import 'package:get/get.dart';
import 'package:multiple_requests_get/data/provider/apiProvider.dart';
import 'package:multiple_requests_get/data/repository/HomeRepository.dart';

import 'homeController.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(repository: HomeRepository(ApiProvider())));
  }
}
