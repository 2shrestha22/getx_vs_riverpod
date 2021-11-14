import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/riverpod/provider.dart';

class MyRiverpodPage extends ConsumerWidget {
  const MyRiverpodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(myProvider);

    ref.listen<MyProvider>(
      myProvider,
      (oldState, newState) {
        if (newState.count % 5 == 0) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Reached ${newState.count}')));
        }
      },
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.increment();
        },
      ),
      appBar: AppBar(
        title: const Text('GetPage'),
      ),
      body: Center(
        child: Text(
          provider.count.toString(),
        ),
      ),
    );
  }
}
