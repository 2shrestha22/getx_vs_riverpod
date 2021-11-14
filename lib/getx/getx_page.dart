import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx/controller.dart';

// what is best way do this
// in bindings
final _myController = Get.find<MyController>();

class MyGetPage extends StatelessWidget {
  const MyGetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _myController.increment();
        },
      ),
      appBar: AppBar(
        title: const Text('GetPage'),
      ),
      body: Center(
        child: Obx(
          () {
            // if (_myController.counter.value % 5 == 0) {
            //   SchedulerBinding.instance?.addPostFrameCallback((_) {
            //     Get.snackbar("Title", 'Reached ${_myController.counter.value}');
            //   });
            // }
            return Text(
              _myController.counter.toString(),
            );
          },
        ),
      ),
    );
  }
}
