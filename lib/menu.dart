import 'package:flutter/widgets.dart';

class Menu {
  String name;
  bool selected;
  Widget body;

  Menu(
    this.name, {
    required this.body,
    this.selected = false,
  });
}
