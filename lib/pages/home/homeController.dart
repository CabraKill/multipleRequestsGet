import 'package:get/get.dart';
import 'package:multiple_requests_get/data/model/futureRx.dart';
import 'package:multiple_requests_get/data/repository/HomeRepository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;

  final moviesRx = FutureState.none().obs;
  final testRx = FutureState.none().obs;
  final errorRx = FutureState.none().obs;

  HomeController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    updateMovies();
    updateTest();
    updateError();
  }

  Future<void> updateMovies() async {
    moviesRx.value = repository.getAllTopRated();
    await moviesRx.value.f;
  }

  Future<void> updateTest() async {
    testRx.value = repository.getTest();
    await testRx.value.f;
  }

  Future<void> updateError() async {
    errorRx.value = repository.getError();
    await errorRx.value.f;
  }

  void updateAll() async{
    await updateMovies();
    print("1");
    await updateTest();
    print("2");
    await updateError();
    print("3");
  }
}
