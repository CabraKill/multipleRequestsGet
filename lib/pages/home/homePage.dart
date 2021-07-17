import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiple_requests_get/data/model/futureRx.dart';

import 'homeController.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: SafeArea(
          child: Obx(() => Column(
                children: [
                  if (controller.moviesRx.value.status.value != Status.DONE)
                    CircularProgressIndicator()
                  else
                    Text(
                      controller.moviesRx.value.data.toString(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (controller.testRx.value.status.value != Status.DONE)
                    CircularProgressIndicator()
                  else
                    Text(
                      controller.testRx.value.data.toString(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (controller.errorRx.value.status.value != Status.DONE)
                    CircularProgressIndicator()
                  else if (controller.errorRx.value.hasError.value)
                    Icon(
                      Icons.error,
                      color: Colors.red,
                    )
                  else
                    Text(
                      controller.errorRx.value.data.toString(),
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.updateAll,
        child: Icon(Icons.replay),
      ),
    );
  }
}
