import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigatorProvider =
    ChangeNotifierProvider.autoDispose<NavigatorProvider>((ref) {
  return NavigatorProvider();
});

class NavigatorProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
