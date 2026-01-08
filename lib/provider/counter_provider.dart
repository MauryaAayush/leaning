// import 'package:flutter/cupertino.dart';
//
// class CounterProvider with ChangeNotifier {
//   int _count = 0;
//
//   int get count => _count;
//
//   void updateCount() {
//     _count++;
//     notifyListeners();
//   }
//
//   void resetCount() {
//     _count = 0;
//     notifyListeners();
//   }
// /

import 'package:flutter_riverpod/legacy.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});
