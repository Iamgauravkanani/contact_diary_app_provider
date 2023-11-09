import 'package:contact_diary_app_2/Modules/Screens/Counter_Screen/Model/counter_model.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  Counter counter = Counter(count: 0);

  void increment() {
    counter.count++;
    notifyListeners();
  }
}
