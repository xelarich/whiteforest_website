import 'package:flutter/widgets.dart';

class Menu {
  int id;
  String name;
  bool selected;
  Widget body;

  Menu(
    this.id,
    this.name, {
    required this.body,
    this.selected = false,
  });
}
