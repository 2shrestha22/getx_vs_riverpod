import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProvider = ChangeNotifierProvider<MyProvider>((_) => MyProvider());

class MyProvider extends ChangeNotifier {
  int count = 0; // with default value

  void increment() {
    count++;
    // to notify widgets about changes
    notifyListeners();
  }
}
