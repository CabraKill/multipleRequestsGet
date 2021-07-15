import 'package:get/get.dart';

enum Status { NONE, LOADING, DONE }

class FutureState {
  final status = Status.NONE.obs;

  final hasError = false.obs;

  final data = Rx<dynamic>(null);

  late Future f;

  FutureState(this.f) {
    ever(data, (value) => print("a"));
    f.asStream().listen((event) {
      data.value = event;
    }, onError: (e) {
      data.value = e;
      hasError.value = true;
      throw e;
    }, onDone: () {
      status.value = Status.DONE;
    });
  }

  // FutureState.none() : f = null;
  FutureState.none();
}
