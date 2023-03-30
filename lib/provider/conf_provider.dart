import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/conf_service.dart';

final confProvider = ChangeNotifierProvider.autoDispose<ConfProvider>((ref) {
  return ConfProvider();
});

class ConfProvider extends ChangeNotifier {
  final _confService = GetIt.I.get<ConfService>();

  late Size screenSize;

  void getScreenSize(BuildContext context) {
    screenSize = _confService.getScreenSize(context);
  }
}
