import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx/getx_page.dart';
import 'package:state_management/riverpod/riverpod_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  // navigate with get
                  Get.to(const MyGetPage()); // no context
                },
                child: const Text('Get')),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyRiverpodPage(),
                    ));
              },
              child: const Text('Riverpod'),
            ),
          ],
        ),
      ),
    );
  }
}
