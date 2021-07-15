import 'package:multiple_requests_get/data/model/futureRx.dart';
import 'package:multiple_requests_get/data/provider/apiProvider.dart';

class HomeRepository {
  final ApiProvider api;

  HomeRepository(this.api);

  FutureState getAllTopRated() => FutureState(api.getAllTopRated());

  FutureState getTest() => FutureState(
      Future.delayed(Duration(seconds: 10)).then((value) => "pronto!!!"));

  FutureState getError() => FutureState(
        Future.delayed(Duration(seconds: 3)).then(
          (value) => throw Exception('deu erro'),
        ),
      );
}
